create table if not exists public.planner_states (
  user_id uuid primary key references auth.users(id) on delete cascade,
  state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.planner_states enable row level security;

revoke all on table public.planner_states from anon, authenticated;
grant select, insert, update on table public.planner_states to authenticated;

drop policy if exists "Users can read their planner" on public.planner_states;
create policy "Users can read their planner"
on public.planner_states for select to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "Users can create their planner" on public.planner_states;
create policy "Users can create their planner"
on public.planner_states for insert to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "Users can update their planner" on public.planner_states;
create policy "Users can update their planner"
on public.planner_states for update to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);
