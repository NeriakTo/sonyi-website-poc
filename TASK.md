# Task: Rebuild SUNG I PoC Homepage

## Goal
Completely rewrite `index.html` as a single self-contained static homepage for SUNG I (崧鎰實業), a Taiwanese precision plastic injection molding B2B manufacturer. The page serves as a visual PoC to confirm design direction before full-site development.

## Design System

### Color System (OKLCH + hex fallback)
Use CSS custom properties with OKLCH where supported, hex fallback:

```css
:root {
  /* Primary — Deep Navy (Trust & Authority) */
  --primary: #0F1B2D;
  --primary-light: #1B2838;
  --primary-foreground: #FFFFFF;

  /* Accent — Gold CTA (Conversion) */
  --accent: #C8A84E;
  --accent-hover: #D4B85E;
  --accent-foreground: #0F1B2D;

  /* Neutrals — Cool-tinted (hint of navy) */
  --background: #FFFFFF;
  --background-alt: #F8FAFC;
  --foreground: #1E293B;
  --muted: #64748B;
  --border: #E2E8F0;

  /* Semantic */
  --success: #059669;
  --destructive: #DC2626;

  /* Motion */
  --ease-out-quart: cubic-bezier(0.25, 1, 0.5, 1);
  --ease-out-expo: cubic-bezier(0.16, 1, 0.3, 1);
  --duration-instant: 150ms;
  --duration-state: 250ms;
  --duration-layout: 400ms;
  --duration-entrance: 600ms;
}
```

### Typography
- Headings: **Lexend** (500, 600, 700)
- Body: **Source Sans 3** (300, 400, 500, 600)
- CJK: **Noto Sans TC** / **Noto Sans JP** (400, 500, 700)
- Load via Google Fonts with `display=swap`

Scale:
- H1 Hero: clamp(2.25rem, 5vw, 3.5rem), line-height 1.1
- H2 Section: clamp(1.75rem, 3.5vw, 2.5rem), line-height 1.2
- H3 Card: clamp(1.25rem, 2vw, 1.5rem), line-height 1.3
- Body: clamp(1rem, 1.2vw, 1.125rem), line-height 1.6
- Caption: 0.875rem, line-height 1.5

### Spacing (4pt base)
4, 8, 12, 16, 24, 32, 48, 64, 96px
- Section padding: py-20 (80px) desktop / py-12 (48px) mobile
- Card gap: 24px
- Content padding: px-6 mobile / px-8 desktop
- Max content width: 1280px

### Layout
60-30-10 rule: 60% neutral, 30% navy/text, 10% gold accent.
Alternating dark/light sections for visual rhythm.

## Sections (10 total, in this exact order)

### 1. Header / Navigation
- Sticky top, h-[72px] desktop / h-[64px] mobile
- Deep navy `--primary` background
- Left: Logo image `assets/logo.jpg` (h-10 desktop, h-8 mobile)
- Center/Right: 9 nav items horizontal (desktop), hamburger menu (mobile)
- Far right: Language switcher (EN | 中 | JP) + gold "Request a Quote" CTA button
- Active section highlighted via IntersectionObserver
- Backdrop blur on scroll (subtle transparency)

### 2. Hero Section
- Full viewport height: `min-h-[calc(100vh-72px)]`
- Deep navy background
- **Left side (55%)**:
  - Eyebrow: `SINCE 1978 · PRECISION PLASTICS` (gold, uppercase, letter-spacing 0.2em, 0.875rem)
  - H1: `Your Trusted Partner in Plastic Injection Molding` (white)
  - Subtitle: `45+ years of precision engineering for global industries` (slate-400)
  - Two CTAs:
    - Primary: "Request a Quote" (gold bg, navy text, px-8 py-4, rounded-lg)
    - Secondary: "Our Capabilities" (white border, white text, ghost style)
  - Below CTAs: Small trust indicators row (ISO 9001 badge, "500+ Global Clients", "OEM/ODM")
- **Right side (45%)**:
  - Clean card/panel showing factory image placeholder (rounded-2xl, subtle border)
  - NO complex nested dashboard UI — keep it clean and aspirational
  - Overlay badge: "45+ Years of Excellence" small floating tag
- Mobile: Stack vertically, text first

### 3. Trust Strip
- Gold `--accent` background, full width
- 4 stats in a row: 45+ Years | 500+ Clients | 1,000+ Molds | 99.8% Satisfaction
- Numbers: Lexend 700, text-4xl desktop / text-2xl mobile
- Labels: Source Sans 3, font-medium
- Count-up animation on scroll intersection
- Text color: navy `--primary`

### 4. Core Capabilities (7 services)
- White background
- Section title centered: "Core Capabilities"
- Subtitle: "Seven specialized processes for your exact requirements"
- 7 cards in responsive grid (lg:3-col first row, lg:4-col second row, or auto-fit minmax(280px, 1fr))
- Each card:
  - Inline SVG icon (48px, gold accent color)
  - H3 title
  - 1-2 line description
  - "Learn More →" link (gold)
  - Hover: translateY(-4px) + shadow-lg, 250ms ease-out-quart
  - Subtle top-border accent on hover (gold 3px)
- Cards: white bg, rounded-xl, p-6, border border-slate-100

### 5. Industries We Serve (5 industries)
- Light gray `--background-alt` background
- 5 cards in lg:5-col grid
- Each card: tall aspect (3:4), with dark gradient overlay (70% default)
- Industry name centered (white, Lexend 600)
- Hover: overlay reduces to 40%, "Explore →" fades in below name
- Transition: 300ms ease-out-quart
- Industries:
  1. Industrial Equipment
  2. Automotive Components
  3. Electronics & Housings
  4. Medical / Healthcare
  5. Sporting Goods & Grips
- Use placeholder colored backgrounds with subtle patterns (no external images)

### 6. Why Sung I
- Deep navy background `--primary`
- Left side: Section title (white) + short paragraph describing company philosophy
- Right side: 2×3 grid of advantage items
- Each item: gold icon + white H3 title + slate-400 description
- Items:
  1. 45+ Years Experience
  2. ISO 9001:2015
  3. OEM / ODM Capability
  4. Vertical Integration
  5. Global Export (JP/EU/US)
  6. One-Stop Manufacturing

### 7. Manufacturing Workflow
- White background
- Horizontal timeline (desktop) / vertical (mobile)
- 6 steps with connected line:
  1. Drawing Review → 2. Mold Design → 3. Mold Manufacturing → 4. Trial Molding → 5. Mass Production → 6. Quality Inspection
- Each step: gold circle with number + title below
- Connection: gold dashed line between circles
- Scroll-triggered sequential reveal animation
- Current/active steps highlight, future steps fade

### 8. Featured Case Studies
- Light gray background
- 3 cards in lg:3-col grid
- Each card:
  - Image area (placeholder with industry-colored bg, rounded-t-xl)
  - Industry badge (small pill)
  - Case title (H3)
  - One-line summary
  - "Read More →" link (gold)
- Bottom: "View All Case Studies →" centered link

### 9. RFQ CTA Section
- Gold gradient background (accent → accent-hover, diagonal)
- Centered content:
  - H2: "Ready to Start Your Next Project?"
  - Subtitle: "Upload your 2D/3D drawings and get a quote within 24 hours"
  - Large CTA: "Request a Quote Now" (navy bg, white text, px-10 py-5)
- Subtle geometric pattern overlay (low opacity navy shapes)

### 10. Footer
- Deep navy background
- 4-column grid (desktop) / stacked (mobile):
  - Col 1: Logo + 2-line company blurb + social icons (LinkedIn, YouTube)
  - Col 2: Quick Links (all main nav items)
  - Col 3: Services (all 7 service names)
  - Col 4: Contact Info (address, phone, email, Nicole.chang@sungitw.com)
- Bottom bar: copyright + language switcher
- Divider: border-slate-700

## Technical Requirements

### Frameworks
- Tailwind CSS via Play CDN: `<script src="https://cdn.tailwindcss.com"></script>`
- Custom Tailwind config for colors, fonts, and custom classes
- Vanilla JavaScript only (no frameworks)

### Accessibility
- Skip-to-content link (first focusable element)
- All interactive elements: visible focus-visible rings (gold, 2px, offset 2px)
- Touch targets ≥ 44×44px
- Semantic HTML: header, nav, main, section, footer
- All images have alt text
- `prefers-reduced-motion`: disable all animations, show everything immediately
- Color contrast ≥ 4.5:1 on all text (verified in design spec)

### Performance
- No external images — use colored placeholders with SVG patterns/icons
- Google Fonts with `display=swap`
- Lazy YouTube facade pattern (no actual embed)
- Target LCP < 2.5s, CLS < 0.1

### Interactions (Motion Design)
- Use CSS custom properties for timing
- Easing: `cubic-bezier(0.25, 1, 0.5, 1)` (ease-out-quart) for most
- Button hover: 150ms (instant feedback)
- Card hover: 250ms (state change)
- Section reveal: 600ms fade-in + translateY(20px), stagger 80ms per card, cap at 500ms total
- Count-up stats: 2000ms on intersection
- Timeline steps: sequential 400ms each on intersection
- Smooth scroll: `scroll-behavior: smooth`
- Nav active state: IntersectionObserver tracking sections

### Mobile Hamburger Menu
- Animated hamburger → X toggle
- Full-screen overlay menu on mobile (navy bg, gold accent)
- Trap focus inside when open
- Close on Escape key
- Smooth slide-in from right (400ms)

## What NOT to do
- NO external image URLs — all placeholders
- NO complex hero right-panel dashboard UI (previous version was too busy)
- NO playful/casual styling — this is B2B manufacturing
- NO bounce or elastic animations — use smooth deceleration
- NO `outline: none` without `:focus-visible` replacement
- NO pure gray — use cool-tinted neutrals
- NO `ease` or `linear` for UI animations

## File Output
- Single file: `index.html`
- Must be fully self-contained (inline styles + inline JS)
- Target: ~800-1200 lines
- Logo: reference `assets/logo.jpg` (already exists in repo)

## Reference
Read the existing poc-design-spec.md at:
/Users/nerigate/openclaw/workspace/projects/sonyi-website/changes/v1-initial-build/poc-design-spec.md
