# GlowRide No-Shopify Launch Kit

This is a static landing page package. No Shopify. No paid page builder. No monthly software tax for a one-product validation test.

## Files

- `index.html` - ready landing page
- `assets/hero.png` - hero image used by the page
- `suppliers.csv` - ranked supplier email list with ready outreach copy
- `supplier_contact_sheet.html` - clickable mailto supplier outreach sheet
- `outreach_email_template.md` - reusable supplier email template

## Run locally

Open `index.html` in your browser.

For a local server:

```bash
cd glowride_no_shopify_launch_kit
python3 -m http.server 8000
```

Then open:

```text
http://localhost:8000
```

## Deploy without Shopify

Use any static host:

- Cloudflare Pages
- Vercel
- Netlify
- GitHub Pages
- Your own VPS with Nginx

Upload the folder as a static site. The page has no backend dependency.

## Current checkout method

The order form opens WhatsApp with a prefilled order message to:

```text
+971 50 235 1089
```

The email order fallback uses:

```text
motivatedc@gmail.com
```

To change either, edit these lines near the bottom of `index.html`:

```js
const WHATSAPP_NUMBER = "971502351089";
const ORDER_EMAIL = "motivatedc@gmail.com";
```

## Operational note

This is built for a 14-day validation test, not a fully automated ecommerce empire because those do not pop out of a microwave. Take orders through WhatsApp, confirm lead time, collect payment manually, then fulfill through the chosen supplier.
