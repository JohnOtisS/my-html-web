<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đà Nẵng · Kế hoạch gia đình 18–22.06.2026</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,300..900;1,9..144,400..700&family=Be+Vietnam+Pro:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<style>
  :root{
    --sea:#0a6b74;
    --sea-deep:#063b46;
    --sea-light:#1ba3a8;
    --sand:#f4ead8;
    --sand-deep:#e8d6b8;
    --coral:#ff6b4a;
    --coral-soft:#ff8a6b;
    --gold:#e0a437;
    --ink:#10322f;
    --cream:#fdf8ef;
    --paper:#fffdf8;
    --shadow:rgba(6,59,70,.14);
  }
  *{margin:0;padding:0;box-sizing:border-box}
  html{scroll-behavior:smooth}
  body{
    font-family:'Be Vietnam Pro',sans-serif;
    background:var(--cream);
    color:var(--ink);
    line-height:1.65;
    overflow-x:hidden;
  }
  ::selection{background:var(--coral);color:#fff}

  /* ---------- HERO ---------- */
  .hero{
    position:relative;
    min-height:100vh;
    display:flex;
    flex-direction:column;
    justify-content:center;
    padding:7vh 8vw 5vh;
    background:
      radial-gradient(120% 90% at 80% 10%, rgba(27,163,168,.55) 0%, transparent 55%),
      radial-gradient(110% 80% at 10% 90%, rgba(255,107,74,.35) 0%, transparent 50%),
      linear-gradient(160deg, var(--sea-deep) 0%, var(--sea) 55%, var(--sea-light) 100%);
    color:var(--cream);
    overflow:hidden;
  }
  .hero::after{
    content:"";position:absolute;inset:0;
    background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='80' height='80'%3E%3Cpath d='M0 40 Q20 20 40 40 T80 40' fill='none' stroke='%23ffffff' stroke-opacity='0.05' stroke-width='2'/%3E%3C/svg%3E");
    pointer-events:none;
  }
  .hero-tag{
    font-size:.8rem;letter-spacing:.42em;text-transform:uppercase;
    font-weight:600;color:var(--gold);margin-bottom:1.5rem;
    opacity:0;animation:rise .9s .1s forwards;
  }
  .hero h1{
    font-family:'Fraunces',serif;
    font-weight:300;
    font-size:clamp(3.2rem,11vw,9rem);
    line-height:.92;letter-spacing:-.02em;
    opacity:0;animation:rise 1s .25s forwards;
  }
  .hero h1 em{
    font-style:italic;font-weight:500;color:var(--coral-soft);
    display:block;
  }
  .hero-sub{
    margin-top:2rem;max-width:46ch;font-size:1.1rem;
    color:rgba(253,248,239,.82);font-weight:300;
    opacity:0;animation:rise 1s .45s forwards;
  }
  .hero-meta{
    display:flex;flex-wrap:wrap;gap:1.2rem;margin-top:3rem;
    opacity:0;animation:rise 1s .6s forwards;
  }
  .chip{
    display:inline-flex;align-items:center;gap:.55rem;
    padding:.7rem 1.3rem;border-radius:100px;
    background:rgba(253,248,239,.1);
    border:1px solid rgba(253,248,239,.22);
    backdrop-filter:blur(8px);
    font-size:.92rem;font-weight:500;
  }
  .chip b{color:var(--gold);font-weight:600}
  .scroll-hint{
    position:absolute;bottom:3vh;left:50%;transform:translateX(-50%);
    font-size:.72rem;letter-spacing:.3em;text-transform:uppercase;
    color:rgba(253,248,239,.5);animation:bob 2s infinite;
  }
  @keyframes rise{to{opacity:1;transform:translateY(0)}}
  .hero-tag,.hero h1,.hero-sub,.hero-meta{transform:translateY(28px)}
  @keyframes bob{0%,100%{transform:translateX(-50%) translateY(0)}50%{transform:translateX(-50%) translateY(8px)}}

  /* ---------- SECTIONS ---------- */
  section{padding:6rem 8vw}
  .label{
    font-size:.76rem;letter-spacing:.36em;text-transform:uppercase;
    color:var(--coral);font-weight:700;margin-bottom:1rem;
  }
  h2{
    font-family:'Fraunces',serif;font-weight:400;
    font-size:clamp(2rem,5vw,3.4rem);line-height:1.04;
    letter-spacing:-.015em;margin-bottom:1rem;color:var(--sea-deep);
  }
  h2 em{font-style:italic;color:var(--coral)}
  .lead{max-width:60ch;color:#3c5c58;font-size:1.08rem;margin-bottom:3rem}

  /* ---------- HOTELS ---------- */
  .stay{background:var(--paper)}
  .hotel-grid{
    display:grid;grid-template-columns:repeat(auto-fit,minmax(270px,1fr));
    gap:1.5rem;
  }
  .tier{
    background:var(--cream);
    border:1px solid var(--sand-deep);
    border-radius:22px;padding:2rem 1.8rem;
    position:relative;overflow:hidden;
    transition:transform .35s cubic-bezier(.2,.8,.2,1),box-shadow .35s;
  }
  .tier:hover{transform:translateY(-8px);box-shadow:0 22px 45px -18px var(--shadow)}
  .tier::before{
    content:"";position:absolute;top:0;left:0;right:0;height:5px;
    background:var(--accent,var(--sea));
  }
  .tier.t1{--accent:var(--sea-light)}
  .tier.t2{--accent:var(--coral)}
  .tier.t3{--accent:var(--gold)}
  .tier-price{
    font-family:'Fraunces',serif;font-size:1.5rem;font-weight:500;
    color:var(--sea-deep);margin-bottom:.2rem;
  }
  .tier-note{font-size:.82rem;color:#6b8581;margin-bottom:1.3rem;font-weight:500}
  .badge{
    display:inline-block;font-size:.68rem;letter-spacing:.1em;
    text-transform:uppercase;font-weight:700;color:#fff;
    background:var(--accent);padding:.25rem .7rem;border-radius:6px;
    margin-bottom:1rem;
  }
  .tier ul{list-style:none}
  .tier li{
    padding:.55rem 0;border-bottom:1px dashed var(--sand-deep);
    font-size:.96rem;font-weight:500;display:flex;align-items:center;gap:.6rem;
  }
  .tier li:last-child{border:none}
  .tier li::before{content:"›";color:var(--accent);font-weight:700;font-size:1.1rem}
  .perks{margin-top:1.2rem;font-size:.85rem;color:#6b8581;font-style:italic}

  /* ---------- TIMELINE ---------- */
  .plan{background:linear-gradient(180deg,var(--cream),var(--paper))}
  .day{
    display:grid;grid-template-columns:130px 1fr;gap:2.5rem;
    padding:2.6rem 0;border-top:2px solid var(--sand-deep);
    position:relative;
  }
  .day:last-of-type{border-bottom:2px solid var(--sand-deep)}
  .day-mark{position:sticky;top:2rem;align-self:start}
  .day-num{
    font-family:'Fraunces',serif;font-size:3.2rem;line-height:1;
    font-weight:300;color:var(--coral);
  }
  .day-date{font-size:.82rem;font-weight:600;color:#6b8581;letter-spacing:.04em}
  .day-dow{font-size:.74rem;color:#9bb0ac;text-transform:uppercase;letter-spacing:.12em}
  .day-body h3{
    font-family:'Fraunces',serif;font-size:1.7rem;font-weight:500;
    color:var(--sea-deep);margin-bottom:1.4rem;
  }
  .slot{
    display:flex;gap:1.1rem;padding:.7rem 0;align-items:flex-start;
  }
  .slot-time{
    flex:0 0 78px;font-size:.78rem;font-weight:700;letter-spacing:.05em;
    text-transform:uppercase;color:var(--sea-light);padding-top:.25rem;
  }
  .slot-text{flex:1}
  .slot-text strong{color:var(--ink);font-weight:600}
  .slot-text .sub{font-size:.9rem;color:#6b8581}
  .pill{
    display:inline-block;font-size:.78rem;font-weight:600;
    background:var(--sand);color:var(--sea-deep);
    padding:.2rem .7rem;border-radius:100px;margin:.2rem .35rem .2rem 0;
  }
  .pill.eat{background:#ffe7df;color:var(--coral)}
  .pill.view{background:#d9efe7;color:var(--sea)}

  /* ---------- COST ---------- */
  .cost{background:var(--sea-deep);color:var(--cream)}
  .cost h2{color:var(--cream)}
  .cost .lead{color:rgba(253,248,239,.7)}
  .cost-table{
    max-width:720px;border-radius:20px;overflow:hidden;
    background:rgba(253,248,239,.05);border:1px solid rgba(253,248,239,.14);
  }
  .cost-row{
    display:flex;justify-content:space-between;align-items:center;
    padding:1.15rem 1.8rem;border-bottom:1px solid rgba(253,248,239,.1);
    font-size:1.02rem;
  }
  .cost-row span:first-child{font-weight:500}
  .cost-row span:last-child{font-family:'Fraunces',serif;font-weight:500;color:var(--gold)}
  .cost-row.total{
    background:rgba(255,107,74,.16);border:none;font-size:1.25rem;
  }
  .cost-row.total span:last-child{color:var(--coral-soft);font-size:1.5rem}

  /* ---------- TIPS ---------- */
  .tips{background:var(--paper)}
  .tip-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(240px,1fr));gap:1.4rem}
  .tip{
    padding:1.8rem;border-radius:18px;background:var(--cream);
    border-left:4px solid var(--coral);
  }
  .tip h4{font-family:'Fraunces',serif;font-size:1.2rem;color:var(--sea-deep);margin-bottom:.5rem;font-weight:500}
  .tip p{font-size:.94rem;color:#3c5c58}

  footer{
    background:var(--ink);color:rgba(253,248,239,.55);
    text-align:center;padding:3rem 8vw;font-size:.85rem;
  }
  footer b{color:var(--gold)}

  @media(max-width:640px){
    .day{grid-template-columns:1fr;gap:1rem}
    .day-mark{position:static;display:flex;align-items:baseline;gap:1rem}
    section{padding:4rem 7vw}
    .slot-time{flex:0 0 64px;font-size:.72rem}
  }
</style>
</head>
<body>

<!-- HERO -->
<header class="hero">
  <div class="hero-tag">Hành trình gia đình · 5 ngày 4 đêm</div>
  <h1>Đà Nẵng<em>chậm rãi &amp; rực rỡ</em></h1>
  <p class="hero-sub">Một chuyến đi cân bằng cho hai vợ chồng và bé gái nhỏ — biển buổi sáng, núi giữa ngày, phố cổ lên đèn buổi tối, và đủ khoảng lặng để nghỉ ngơi.</p>
  <div class="hero-meta">
    <span class="chip">📅 <b>18 → 22.06.2026</b></span>
    <span class="chip">👨‍👩‍👧 <b>2 lớn + 1 bé</b></span>
    <span class="chip">🏖️ Khu <b>Mỹ Khê</b></span>
    <span class="chip">💰 <b>13–23 triệu</b></span>
  </div>
  <div class="scroll-hint">Cuộn xuống ↓</div>
</header>

<!-- HOTELS -->
<section class="stay">
  <div class="label">Nơi lưu trú</div>
  <h2>Ở khu biển <em>Mỹ Khê</em></h2>
  <p class="lead">Đi bộ ra biển buổi sáng và tối, gần trung tâm, đi đâu cũng tiện và nhiều quán ăn gia đình. Ba mức giá để bạn chọn theo ngân sách — cả ba đều có phòng gia đình và hồ bơi.</p>
  <div class="hotel-grid">
    <div class="tier t1">
      <span class="badge">Tiết kiệm</span>
      <div class="tier-price">1,2 – 2 triệu</div>
      <div class="tier-note">mỗi đêm · view biển, hồ bơi</div>
      <ul>
        <li>Sala Danang Beach Hotel</li>
        <li>Mandila Beach Hotel</li>
        <li>Diamond Sea Hotel</li>
      </ul>
      <p class="perks">Sala đạt 4.6★ với gần 3.500 đánh giá — bữa sáng và vị trí được khen nhiều.</p>
    </div>
    <div class="tier t2">
      <span class="badge">Đáng tiền nhất</span>
      <div class="tier-price">2 – 4 triệu</div>
      <div class="tier-note">mỗi đêm · hồ bơi vô cực, rooftop</div>
      <ul>
        <li>TMS Hotel Da Nang Beach</li>
        <li>Four Points by Sheraton</li>
        <li>Radisson Hotel Danang</li>
      </ul>
      <p class="perks">TMS đạt 4.7★ — bể bơi rooftop và phòng rộng, ngay sát bãi biển.</p>
    </div>
    <div class="tier t3">
      <span class="badge">Nghỉ dưỡng xịn</span>
      <div class="tier-price">4 triệu +</div>
      <div class="tier-note">mỗi đêm · resort, bãi riêng, spa</div>
      <ul>
        <li>Hyatt Regency Danang</li>
        <li>Furama Resort Danang</li>
      </ul>
      <p class="perks">Furama có bãi biển riêng, nhiều hồ bơi và cả công viên có công đi dạo — rất hợp gia đình.</p>
    </div>
  </div>
</section>

<!-- ITINERARY -->
<section class="plan">
  <div class="label">Lịch trình chi tiết</div>
  <h2>Năm ngày, <em>không vội vàng</em></h2>
  <p class="lead">Sắp xếp xen kẽ biển – núi – phố cổ – vui chơi, không phải dậy quá sớm và luôn có buổi tối thư giãn gần biển.</p>

  <!-- DAY 18 -->
  <div class="day">
    <div class="day-mark">
      <div class="day-num">18</div>
      <div class="day-date">Tháng 6, 2026</div>
      <div class="day-dow">Thứ Năm</div>
    </div>
    <div class="day-body">
      <h3>Đặt chân tới biển</h3>
      <div class="slot"><div class="slot-time">~18h</div><div class="slot-text"><strong>Tới Đà Nẵng &amp; nhận phòng</strong><div class="sub">Thả đồ, nghỉ ngơi cho bé sau chuyến bay.</div></div></div>
      <div class="slot"><div class="slot-time">Tối</div><div class="slot-text"><strong>Dạo biển Mỹ Khê &amp; ăn hải sản</strong><div class="sub">Gợi ý quán gia đình: <span class="pill eat">Bé Mặn</span> <span class="pill eat">Năm Đảnh</span></div></div></div>
      <div class="slot"><div class="slot-time">~21h</div><div class="slot-text"><strong>Check-in Cầu Rồng &amp; Cầu Tình Yêu</strong><div class="sub">Cuối tuần (T7, CN) Cầu Rồng phun lửa, phun nước ~21h — nhưng đêm thường vẫn rất đẹp để chụp ảnh.</div></div></div>
    </div>
  </div>

  <!-- DAY 19 -->
  <div class="day">
    <div class="day-mark">
      <div class="day-num">19</div>
      <div class="day-date">Tháng 6, 2026</div>
      <div class="day-dow">Thứ Sáu</div>
    </div>
    <div class="day-body">
      <h3>Bà Nà Hills — cả ngày trên mây</h3>
      <div class="slot"><div class="slot-time">~7–8h</div><div class="slot-text"><strong>Khởi hành sớm lên Bà Nà</strong><div class="sub">Đi sớm để mát mẻ và ít đông. Mang theo áo khoác nhẹ — trên đỉnh se lạnh.</div></div></div>
      <div class="slot"><div class="slot-time">Trong ngày</div><div class="slot-text"><strong>Điểm nổi bật</strong><div class="sub"><span class="pill view">Cầu Vàng</span> <span class="pill view">Làng Pháp</span> <span class="pill">Tàu hỏa leo núi</span> <span class="pill">Fantasy Park</span> <span class="pill">Vườn hoa</span></div></div></div>
      <div class="slot"><div class="slot-time">Tối</div><div class="slot-text"><strong>Về khách sạn nghỉ</strong><div class="sub">Ăn tối nhẹ nhàng gần biển, ngủ sớm bù sức.</div></div></div>
    </div>
  </div>

  <!-- DAY 20 -->
  <div class="day">
    <div class="day-mark">
      <div class="day-num">20</div>
      <div class="day-date">Tháng 6, 2026</div>
      <div class="day-dow">Thứ Bảy</div>
    </div>
    <div class="day-body">
      <h3>Sơn Trà sáng, vui chơi tối</h3>
      <div class="slot"><div class="slot-time">Sáng</div><div class="slot-text"><strong>Bán đảo Sơn Trà</strong><div class="sub"><span class="pill view">Chùa Linh Ứng</span> <span class="pill">Cây đa nghìn năm</span> <span class="pill view">Đỉnh Bàn Cờ</span> — view biển cực đẹp. Chùa Linh Ứng 4.7★, có tượng Phật Bà cao nhất.</div></div></div>
      <div class="slot"><div class="slot-time">Chiều</div><div class="slot-text"><strong>Nghỉ trưa &amp; thư giãn hồ bơi</strong><div class="sub">Tránh nắng gắt giữa trưa, để bé nghỉ.</div></div></div>
      <div class="slot"><div class="slot-time">Tối</div><div class="slot-text"><strong>Công viên Châu Á &amp; Sun Wheel</strong><div class="sub">Da Nang Downtown — vòng quay khổng lồ, khu trò chơi, chụp ảnh đêm. Bé sẽ rất thích.</div></div></div>
    </div>
  </div>

  <!-- DAY 21 -->
  <div class="day">
    <div class="day-mark">
      <div class="day-num">21</div>
      <div class="day-date">Tháng 6, 2026</div>
      <div class="day-dow">Chủ Nhật</div>
    </div>
    <div class="day-body">
      <h3>Hội An — ngày của những bức ảnh đẹp nhất</h3>
      <div class="slot"><div class="slot-time">Chiều</div><div class="slot-text"><strong>Khởi hành đi Hội An (~30 phút)</strong><div class="sub">Đi buổi chiều mát, tránh nắng cho bé.</div></div></div>
      <div class="slot"><div class="slot-time">~18h30</div><div class="slot-text"><strong>Phố cổ lên đèn</strong><div class="sub"><span class="pill view">Phố cổ Hội An</span> <span class="pill view">Chùa Cầu</span> <span class="pill">Chợ đêm</span> <span class="pill">Thả đèn hoa đăng</span></div></div></div>
      <div class="slot"><div class="slot-time">Tối</div><div class="slot-text"><strong>Ăn tối tại Hội An</strong><div class="sub">Cao lầu, hoành thánh… Khoảng 21h thong thả quay về Đà Nẵng.</div></div></div>
    </div>
  </div>

  <!-- DAY 22 -->
  <div class="day">
    <div class="day-mark">
      <div class="day-num">22</div>
      <div class="day-date">Tháng 6, 2026</div>
      <div class="day-dow">Thứ Hai</div>
    </div>
    <div class="day-body">
      <h3>Ngũ Hành Sơn &amp; tạm biệt</h3>
      <div class="slot"><div class="slot-time">Sáng</div><div class="slot-text"><strong>Ngũ Hành Sơn (Marble Mountains)</strong><div class="sub">Hang động, chùa cổ, view toàn thành phố. Nhẹ nhàng nếu bay chiều.</div></div></div>
      <div class="slot"><div class="slot-time">Trưa</div><div class="slot-text"><strong>Ăn đặc sản tạm biệt</strong><div class="sub"><span class="pill eat">Mì Quảng</span> <span class="pill eat">Bún chả cá</span> <span class="pill eat">Bánh tráng cuốn thịt heo</span></div></div></div>
      <div class="slot"><div class="slot-time">Chiều</div><div class="slot-text"><strong>Ra sân bay</strong><div class="sub">Kết thúc hành trình.</div></div></div>
    </div>
  </div>
</section>

<!-- COST -->
<section class="cost">
  <div class="label">Ngân sách dự kiến</div>
  <h2>Chi phí cho <em>3 người · 4 đêm</em></h2>
  <p class="lead">Ước tính tham khảo, dao động theo hạng khách sạn và thói quen chi tiêu.</p>
  <div class="cost-table">
    <div class="cost-row"><span>🏨 Khách sạn (4 đêm)</span><span>6 – 12 triệu</span></div>
    <div class="cost-row"><span>🚡 Vé Bà Nà Hills</span><span>2,5 – 3,5 triệu</span></div>
    <div class="cost-row"><span>🍤 Ăn uống</span><span>3 – 5 triệu</span></div>
    <div class="cost-row"><span>🚖 Taxi / Grab</span><span>1 – 2 triệu</span></div>
    <div class="cost-row"><span>🏮 Hội An</span><span>0,5 – 1 triệu</span></div>
    <div class="cost-row total"><span>Tổng cộng</span><span>13 – 23 triệu</span></div>
  </div>
</section>

<!-- TIPS -->
<section class="tips">
  <div class="label">Mẹo nhỏ cho gia đình</div>
  <h2>Để chuyến đi <em>nhẹ nhàng hơn</em></h2>
  <div class="tip-grid">
    <div class="tip"><h4>Đặt vé Bà Nà trước</h4><p>Mua online sớm để tránh xếp hàng và đôi khi rẻ hơn. Đi cáp treo từ 8h sáng cho mát.</p></div>
    <div class="tip"><h4>Giữ sức cho bé</h4><p>Buổi trưa nắng gắt — dành thời gian nghỉ hồ bơi hoặc trong phòng, dồn hoạt động vào sáng sớm và chiều tối.</p></div>
    <div class="tip"><h4>Hội An đi chiều</h4><p>Đợi ~18h30 phố lên đèn là khoảnh khắc đẹp nhất. Đi chiều vừa mát vừa tránh nắng cho bé.</p></div>
    <div class="tip"><h4>Mang theo</h4><p>Áo khoác mỏng (Bà Nà se lạnh), giày dễ tháo (vào chùa), kem chống nắng, mũ và nước cho bé.</p></div>
  </div>
</section>

<footer>
  Hành trình Đà Nẵng · <b>18 → 22 tháng 6, 2026</b> · Cân bằng giữa biển, núi, phố cổ và nghỉ dưỡng cho cả nhà.
</footer>

</body>
</html>
