# GlowRide — Launch Command Center

**One source of truth.** This single file replaces the scattered planning docs. Everything you need to go from "files on a laptop" to "ads running and orders landing" is here, in the order you'll actually do it.

**The locked model:** UAE-only · stock on hand · cash on delivery · next-day courier · order + close on WhatsApp · GlowRide brand · ~AED 600–800 ad spend over 14 days.

**What winning means:** Net profit of AED 1+ by Day 14. That proves the whole machine — source, funnel, paid traffic, WhatsApp close, fulfil, reconcile. The light kit is disposable; the proven machine is the asset.

---

## 1. The economics (know these cold)

| Per unit | AED |
|---|---|
| Sell price | 149 |
| Unit cost (bought locally) | 20–30 |
| Courier per delivery | 20–25 |
| **Landed cost per delivered sale** | **~45–55** |
| **Profit per paid sale** | **~95–104** |

**The one number that trips people up — COD refusals.** A refused order still cost you the courier fee (~AED 22) but earned nothing. The unit comes back and is reusable, so you only lose the courier leg. Two refusals ≈ one sale's profit wiped. This is why the confirmation step in §5 is not optional.

**Break-even:** ~7–8 paid sales covers the full ~AED 600–800 ad budget. Sale #8 onward is profit. That's ~0.6 sales/day — very reachable locally with COD.

The live version of this math runs automatically in **`GlowRide-Order-Tracker.xlsx`** — log every order there and the Dashboard tells you in real time whether you're above or below the line.

---

## 2. Pre-launch checklist — do NOT spend a dirham until every box is ticked

This is the gate. Skipping any of these is how test budgets get burned for nothing.

**Product (the foundation)**
- [ ] Bought 2–3 different kits locally, tested each: app pairs, music-sync works, adhesive holds, brightness is good.
- [ ] Picked the single best unit. **The one you film and sell must be the good one.**
- [ ] Have 15 units of that exact SKU on hand, ready to dispatch tomorrow.

**Money & order capture**
- [ ] WhatsApp Business installed on the number in the landing page (**+971 50 235 1089** — change in `index.html` line ~612 if different).
- [ ] Greeting message + the §5 quick-replies saved as WhatsApp "quick replies."
- [ ] The order tracker (`GlowRide-Order-Tracker.xlsx`) open and ready, or its columns copied into a phone note.

**The funnel**
- [ ] `index.html` deployed to a free host (Netlify / Vercel / Cloudflare Pages — drag-and-drop the file, live in 5 min). Confirm the WhatsApp button opens a chat with a prefilled order.
- [ ] Tested the page on your own phone — does it load fast, does "Order on WhatsApp" work?

**Creative (your only real edge)**
- [ ] Filmed the full shot list (§4) — one night, ~30 min, in a dark car park.
- [ ] Cut 3 ads (15s each, vertical, CapCut). Raw phone footage — do not over-produce.
- [ ] Each ad shows the **dark-cabin → tap → glow reveal inside the first 2 seconds.**
- [ ] Dropped a real 15s clip into the landing page's `[ DROP A REAL CLIP HERE ]` slot and swapped the SVG hero for a real photo/clip if you have one.

**Accounts**
- [ ] GlowRide TikTok + Instagram created. WhatsApp link in both bios.
- [ ] Meta Business + ad account set up; TikTok Ads account set up.

**Supplier (for restocking, not this batch)**
- [ ] Sent RFQs to YOBIS and Jony at minimum (use `supplier_contact_sheet.html` — one click prefills each email). These are for **restocking after you validate**, so they don't block launch.

---

## 3. Logistics & fulfillment architecture

The whole operation is a pipeline. Each order moves left-to-right; your job is to never let one get stuck.

```
SOURCE → STOCK → ORDER IN → CONFIRM → DISPATCH → DELIVER → COLLECT CASH → RECONCILE → RESTOCK
 (§2)    15 on   WhatsApp    the COD    same-day   driver    AED 149 cash   tracker     supplier
         hand     or page     lock       courier              at the door    + scoreboard  RFQ
```

**Sourcing (today, before anything):** Buy 15 units locally so you can deliver tomorrow — do not wait on China for the test.
- **Dragon Mart 1 & 2 (Dubai):** car-accessory shops, AED 15–35/unit, buy in person and inspect.
- **Noon.com / Amazon.ae:** search *"car ambient light RGB app control"*, *"car interior atmosphere light 12V"*, *"fiber optic car light kit"*. Buy 2–3 to compare.
- **AliExpress:** only if you have a 3+ day buffer; better for *restock*, not the first batch.

**Stock control:** Keep a simple count. 15 units = enough to prove the model and survive a few refusals. When you're down to ~3, that's your restock trigger (see below).

**Order intake:** Two doors, same destination —
1. Landing-page form → opens WhatsApp with the order prefilled.
2. Meta/TikTok "Send Message" ad → opens WhatsApp directly (skips the page). Test both; the direct-message route is usually the cleanest funnel.

**Dispatch rule:** **Only confirmed orders ship.** A confirmed order (§5 Step 3) goes out same-day with a local courier (or self-deliver in your emirate to save the fee while volume is tiny). Log it as `Dispatched` in the tracker immediately.

**Delivery & cash:** Driver calls/WhatsApps before arrival, hands over the kit, collects AED 149 cash. Mark `Delivered`, then `Paid` once the cash is in hand. A no-show or refusal → mark `Refused` (the tracker counts the lost courier fee).

**Reconcile daily:** Every night, update the tracker. The Dashboard shows cash collected − costs − ad spend = where you actually stand. No guessing.

**Restock decision (only after validation):**
- Down to ~3 units **and** the Dashboard is at/near break-even → reorder locally for the next few days, and confirm pricing/lead time with YOUR strongest supplier reply (YOBIS / Jony first).
- Not yet at break-even → do **not** restock. Spend the remaining test budget proving demand first.

---

## 4. Marketing strategy & ad plan

**The thesis:** this product is saturated globally, so the creative is the only edge. Raw, filmed-in-your-own-car footage beats polished studio ads in this market. Film on your phone, vertical, at night.

**The one rule:** every ad shows the **before → after reveal in the first 2 seconds.** Dark boring cabin → tap phone → cabin explodes with colour. If the glow isn't on screen by second 2, the ad is dead.

### Shot list — film all of this in ONE night (~30 min, parked, dark surroundings)
1. **The reveal** (most important): phone in frame, cabin dark, tap the app, lights snap on, slow pan around. Film 3–4 times in different colours (purple, red, ice-blue, green).
2. **Music sync:** lights pulsing to a song. 5s.
3. **The install:** hands tucking the strip along dash/footwell, plug into USB. 10s.
4. **POV night drive:** hands on wheel, glow around, slow drive. 5s.
5. **Unboxing:** open the box, lay parts out. 5s.
6. **Colour scroll:** swipe through colours, cabin changing live. 5s.

That's raw material for 5+ ads from one night.

### The 3 ads (15s each — build these first)
- **Ad 1 — "The Reveal"** (run first, strongest): 0–2s dark cabin, text *"My car at night… 😐"* → tap → *"…after 10 minutes 🔥"* → pan glow → music-sync → end card *"AED 149 · Cash on delivery · Delivered tomorrow in UAE · Order on WhatsApp 👆"*.
- **Ad 2 — "The Install"** (kills the "is it hard?" objection): *"No tools. No mechanic. 10 minutes."* → fast install cuts → tap → glow → *"AED 149 · Pay cash when it arrives · UAE next-day"*.
- **Ad 3 — "POV Night Drive"** (vibe/retargeting): POV wheel + glow on trending audio → colour changes → music sync → *"Turn every drive into a vibe · AED 149 · UAE"*.

### Hooks to test (same footage, swap the first-frame text — cheapest way to find a winner)
1. "My car at night went from 😐 to 🔥"
2. "POV: you finally upgraded your boring interior"
3. "Why does no one in the UAE know about this?"
4. "AED 149 and you pay CASH when it arrives"
5. "Installed this in my Patrol in 10 minutes"
6. "Tell me your car isn't boring without telling me…"

### Paid copy (caption / primary text)
> Your car's interior is boring at night. This fixes it in 10 minutes. 🔥
> Universal RGB ambient light kit — 16 million colours, music sync, controlled from your phone.
> ✅ AED 149 (was 199)
> ✅ Cash on delivery — pay when it arrives
> ✅ Delivered TOMORROW across the UAE
> Order on WhatsApp 👇

**Headline:** Glow up your cabin — AED 149, delivered tomorrow · **CTA:** Send Message (WhatsApp)

### Campaign setup
- **Platforms:** TikTok + Meta (Instagram Reels priority). If budget is tight, start TikTok — cheaper reach in UAE for this product.
- **Budget:** AED 50/day to start. Split AED 30 TikTok / AED 20 Meta, or go all-in on one platform if 50 is the cap.
- **Objective:** Meta → "Send Message → WhatsApp" (cleanest funnel, opens WhatsApp directly). Test it against landing-page traffic. TikTok → optimise for clicks/messaging.
- **Targeting (UAE):** all emirates (tighten to AUH/DXB/SHJ if far-emirate delivery is slow) · age 18–40 · all genders (skews male, but women buy as gifts) · interests: car modification, car accessories, automotive, Nissan Patrol, BMW, drifting, JDM, car detailing · language EN + AR.
- **Creative rotation:** Ads 1, 2, 3 as separate ads in **ONE ad set**. Let the algorithm find the winner. Don't split into many ad sets on AED 50/day — you'll starve the data.

### Daily optimisation rules
- **Day 1–2:** don't touch it. Let it learn. Watch cost-per-WhatsApp-message.
- **Day 3:** kill any ad with a message cost 2× worse than your best. Keep the winner.
- **Day 4+:** if one ad is clearly winning and messages are coming in, push to AED 70–80/day on the winner.
- **Benchmark:** cost per WhatsApp message under ~AED 8–12. Close 1 in 4 → ~AED 40 cost per sale on a ~AED 100 margin = profitable.

### Kill switches (don't throw good money after bad)
- **AED 300 spent, zero WhatsApp messages** → creative is broken. Refilm the hook. Don't keep paying.
- **Lots of messages, no closes** → price/trust problem or slow replies. Fix the WhatsApp flow (§5), not the ad.
- **Sales but COD refusals high** → tighten the confirmation step; only dispatch confirmed orders.
- **ROAS underwater by Day 10** → product/market is wrong, not the execution. Note it, kill it, move on — that's still a valid result; you'd have proven the system works even if this product doesn't.

### Organic (free, run in parallel)
Post the same clips on TikTok + Instagram Reels daily from the GlowRide accounts. One can go semi-viral locally for free. WhatsApp link in bio. Pure upside.

---

## 5. Customer handling workflow (WhatsApp is where the money is made)

The ad gets them here; **this closes them.** Reply within minutes or the sale cools. Save each block below as a WhatsApp quick reply.

**Step 1 — Instant reply / greeting**
> Hi! 👋 Thanks for your interest in the GlowRide RGB kit.
> It's **AED 149**, cash on delivery, delivered **tomorrow** anywhere in the UAE. 🔥
> Just send me your **name, area, and car model** and I'll lock in your order.

**Step 2 — Collect & read back details** (you need: name, area/address, number, car, qty)
> Perfect ✅ Just to confirm so I can dispatch:
> 📍 [Area/Address]
> 🚗 [Car]
> 📦 [Qty] kit(s) — AED [total]
> 💵 Cash on delivery
> Shall I send it out today for delivery tomorrow?

**Step 3 — The confirmation lock (this is the COD safety net — never skip it)**
> Done! ✅ Your GlowRide kit is dispatched. The driver will WhatsApp/call you before arriving tomorrow. Please keep **AED [total] cash** ready. 🙌
> I'll also send you a 2-minute install video once it's delivered. Enjoy the glow! 🌈

**Step 4 — After delivery (drives reviews + referrals)**
> Hey [name]! Did the kit arrive okay? 😄 Here's the quick install video: [link]
> If you love it, a quick photo/video of your car glowing would mean the world — and I'll send you a discount code for your next order or for a friend. 🙏

**Bundle upsell (one soft mention only, after they commit to 1)**
> By the way — most people grab a 2nd for the wife's/family car since delivery's already coming. 2 kits is **AED 269 instead of 298** (save AED 29). Want me to add one?

**Objection handling (paste-ready)**
- *"Is it good quality / will it break?"* → "Totally fair — that's exactly why we do cash on delivery. You inspect it first, only pay if you're happy. Plus 7-day replacement on any defect. Zero risk to you. 👍"
- *"Will it fit my [car]?"* → "Yes 👍 It's universal — flexible adhesive strips that fit the dash and footwells of basically any car, including the [their car]. Powers from your USB/12V. Takes 10 mins."
- *"Can you do a better price?"* → "AED 149 is already the launch price (was 199). But grab 2 and I can do AED 269 for both — best deal I can offer. 🙌"
- *"Is this legit / where are you based?"* → "We're based here in the UAE and hold stock locally — that's how we deliver tomorrow. And you pay cash on delivery, so you're protected either way. 🙏"
- *"Let me think about it."* → "No problem! Just so you know, this is the launch batch at AED 149 — once it's gone it goes back to 199. I'll keep one reserved for you for 24h if you want. 😊"

**Golden rule of UAE COD:** 10–20% of orders refuse (not home, changed mind, fake). The one-line confirmation in Step 2 → Step 3 cuts that sharply and saves the courier fee on dead orders. **Always confirm before you dispatch.**

---

## 6. The 14-day run

**Day 1 (today):** Buy/test 15 units, pick the best. Send 2 supplier RFQs (restock). Set up WhatsApp Business + greeting + quick replies. Create TikTok + Instagram.

**Day 2:** Film everything (one night). Edit 3 ads. Deploy `index.html` to Netlify/Vercel/Cloudflare (update the WhatsApp number first). Test the order button on your phone.

**Day 3:** Launch ads — AED 50/day, Meta "Send Message → WhatsApp" + TikTok. Post all 3 clips organically. Be glued to WhatsApp; reply in minutes.

**Day 4–5:** Kill the worst ad, keep the winner. First sales should land — confirm → dispatch → deliver. Post organic daily.

**Day 6–8:** Scale the winner to AED 70–80/day **only if** cost-per-message is healthy (<~AED 12). This is where you cross break-even (~sale 7–8). Ask delivered customers for a real photo/clip → swap them into the page's review slots.

**Day 9–11:** Pure scaling. Refilm a fresh hook if the ad fatigues. Soft bundle-upsell on every chat.

**Day 12–14:** Final push. Day 14 — read the tracker. Positive = proven. Decide: scale into a real brand, or kill the product and reuse the machine.

---

## 7. The scoreboard

Update **`GlowRide-Order-Tracker.xlsx`** after every order and every day's ad spend. The Dashboard tab auto-calculates:

```
PAID SALES × ~AED 100 profit   = AED ______
− AD SPEND                       = AED ______
− COURIER ON REFUSED ORDERS      = AED ______
-----------------------------------------------
NET PROFIT                       = AED ______   ← positive by Day 14 = WIN
```

If that number is positive by even AED 1 on Day 14, you proved it.

---

## 8. File map (what to keep, what to retire)

**Use these three — they're the launch set:**
- `index.html` — final, self-contained landing page. Deploy as-is. Edit the WhatsApp number near line 612.
- `GlowRide-Launch-Playbook.md` — this file. Your command center.
- `GlowRide-Order-Tracker.xlsx` — live order log + auto scoreboard.

**Keep as a reference / action tool:**
- `supplier_contact_sheet.html` — one-click supplier RFQ emails (for restock).

**Retire (now folded into this playbook — delete to avoid confusion):** the two `creative-and-ad-kit` copies, `14-day-playbook-2.md`, `whatsapp-sales-flow-2.md`, `index__2_.html`, `index_3.html`, `README.md`, `outreach_email_template.md`, `supplier_sources.md`, and the `suppliers-for-restock` CSV (the contact sheet covers it).

Let's go. 🟣
