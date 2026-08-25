-- Shared planner workspace for exactly the users listed in planner_members.
create table if not exists public.planner_workspaces (
  id uuid primary key,
  name text not null,
  state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now(),
  updated_by uuid references auth.users(id) on delete set null
);

create table if not exists public.planner_members (
  workspace_id uuid not null references public.planner_workspaces(id) on delete cascade,
  user_id uuid not null references auth.users(id) on delete cascade,
  display_name text not null,
  role text not null default 'editor' check (role in ('owner','editor')),
  primary key (workspace_id, user_id)
);

create table if not exists public.planner_task_progress (
  workspace_id uuid not null references public.planner_workspaces(id) on delete cascade,
  task_id text not null,
  done boolean not null default false,
  updated_by uuid references auth.users(id) on delete set null,
  updated_at timestamptz not null default now(),
  primary key (workspace_id, task_id)
);

insert into public.planner_workspaces (id, name)
values ('3daad221-5788-44e5-b911-58a6a8627592', 'Otis Couple Roadtrip')
on conflict (id) do nothing;

alter table public.planner_workspaces enable row level security;
alter table public.planner_members enable row level security;
alter table public.planner_task_progress enable row level security;

revoke all on table public.planner_workspaces from anon, authenticated;
revoke all on table public.planner_members from anon, authenticated;
revoke all on table public.planner_task_progress from anon, authenticated;
grant select, update on table public.planner_workspaces to authenticated;
grant select on table public.planner_workspaces to anon;
grant select on table public.planner_members to authenticated;
grant select, insert, update on table public.planner_task_progress to anon, authenticated;

drop policy if exists "Everyone can read task progress" on public.planner_task_progress;
create policy "Everyone can read task progress"
on public.planner_task_progress for select to anon, authenticated
using (workspace_id = '3daad221-5788-44e5-b911-58a6a8627592');

drop policy if exists "Everyone can create task progress" on public.planner_task_progress;
create policy "Everyone can create task progress"
on public.planner_task_progress for insert to anon, authenticated
with check (workspace_id = '3daad221-5788-44e5-b911-58a6a8627592');

drop policy if exists "Everyone can update task progress" on public.planner_task_progress;
create policy "Everyone can update task progress"
on public.planner_task_progress for update to anon, authenticated
using (workspace_id = '3daad221-5788-44e5-b911-58a6a8627592')
with check (workspace_id = '3daad221-5788-44e5-b911-58a6a8627592');

drop policy if exists "Members can read their membership" on public.planner_members;
create policy "Members can read their membership"
on public.planner_members for select to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "Members can read shared planner" on public.planner_workspaces;
create policy "Members can read shared planner"
on public.planner_workspaces for select to authenticated
using (
  exists (
    select 1 from public.planner_members member
    where member.workspace_id = planner_workspaces.id
      and member.user_id = (select auth.uid())
  )
);

drop policy if exists "Guests can view shared planner" on public.planner_workspaces;
create policy "Guests can view shared planner"
on public.planner_workspaces for select to anon
using (true);

drop policy if exists "Members can update shared planner" on public.planner_workspaces;
create policy "Members can update shared planner"
on public.planner_workspaces for update to authenticated
using (
  exists (
    select 1 from public.planner_members member
    where member.workspace_id = planner_workspaces.id
      and member.user_id = (select auth.uid())
  )
)
with check (
  exists (
    select 1 from public.planner_members member
    where member.workspace_id = planner_workspaces.id
      and member.user_id = (select auth.uid())
  )
);

do $$
begin
  alter publication supabase_realtime add table public.planner_workspaces;
exception
  when duplicate_object then null;
end $$;

do $$
begin
  alter publication supabase_realtime add table public.planner_task_progress;
exception
  when duplicate_object then null;
end $$;

insert into public.planner_members (workspace_id, user_id, display_name, role)
values
  ('3daad221-5788-44e5-b911-58a6a8627592', 'd355b034-bb7b-4c34-b671-a49b65ae0912', 'Otis', 'owner'),
  ('3daad221-5788-44e5-b911-58a6a8627592', '034c30a8-19eb-4730-91fd-dc0e5d6e6a1f', 'Vicutе', 'editor')
on conflict (workspace_id, user_id) do update
set display_name = excluded.display_name,
    role = excluded.role;
