# Task: Build Static PoC Homepage

Read the design spec at `/Users/nerigate/openclaw/workspace/projects/sonyi-website/changes/v1-initial-build/poc-design-spec.md` and create a complete `index.html` file in THIS directory.

## Requirements
- Single `index.html` file, complete and self-contained
- Tailwind CSS via Play CDN `<script src="https://cdn.tailwindcss.com"></script>`
- Google Fonts: Lexend, Source Sans 3, Noto Sans TC, Noto Sans JP
- Vanilla JavaScript for animations
- NO build tools, NO npm

## 10 Sections (in order)
1. **Header** — sticky nav, dark bg #0F1B2D, logo "SUNG I", 9 nav items, language switcher (EN/繁中/JP), gold CTA button, mobile hamburger menu
2. **Hero** — full-width dark bg, left: eyebrow + H1 + subtitle + 2 CTAs, right: video placeholder, min-h-80vh
3. **Trust Strip** — gold bg #C8A84E, 4 stats with count-up animation (45+ years, 500+ clients, 1000+ molds, 99.8% satisfaction)
4. **Core Capabilities** — 7 service cards in grid, white bg, hover lift effect
5. **Industries** — 5 industry cards with dark overlay + hover reveal, light gray bg
6. **Why Sung I** — dark bg, left text + right 2x3 grid of advantages
7. **Manufacturing Workflow** — horizontal timeline desktop / vertical mobile, 6 steps
8. **Featured Cases** — 3 case study cards, light gray bg
9. **RFQ CTA** — gold gradient, centered H2 + CTA button
10. **Footer** — dark bg, 4 columns, copyright

## Colors
- Primary dark: #0F1B2D
- Accent gold: #C8A84E (hover: #D4B85E)
- Background: #FFFFFF / alt: #F8FAFC
- Text: #1E293B (main) / #64748B (muted) / #94A3B8 (on dark)

## Animations (vanilla JS + IntersectionObserver)
- Count-up numbers in Trust Strip
- Fade-in + translateY(20px) for sections on scroll
- Respect prefers-reduced-motion
- Smooth scroll for anchors

## Key Details
- Semantic HTML (header/main/section/footer/nav)
- Skip-to-content link
- Focus rings on interactive elements
- Touch targets ≥ 44px
- All images use placeholder divs (no external images)
- Use Heroicons-style inline SVGs for icons (not emoji)
- Make it visually IMPRESSIVE for B2B client presentation

## Service Cards Content
1. Precision Plastic Injection Molding — "High-precision parts from 0.1g to 3,000g with ±0.02mm tolerance"
2. Mold Design & Tooling Development — "In-house mold design, CNC machining, and rapid prototyping"
3. Insert Molding — "Metal-plastic integration for enhanced structural strength"
4. Overmolding — "Multi-material bonding for ergonomic grips and seals"
5. Secondary Processing & Assembly — "Pad printing, ultrasonic welding, and full assembly services"
6. Material Selection Support — "Expert guidance on 50+ engineering plastics and compounds"
7. Plastic-Metal Integrated Manufacturing — "Complete metal stamping to plastic molding workflow"

## Industries
1. Industrial Equipment
2. Automotive Components
3. Electronics & Housings
4. Medical / Healthcare
5. Sporting Goods & Grips

## Why Sung I (6 advantages)
1. 45+ Years Experience
2. ISO 9001:2015 Certified
3. OEM / ODM Capability
4. Vertical Integration
5. Global Export (JP / EU / US)
6. One-Stop Manufacturing

## Workflow Steps
1. Drawing Review → 2. Mold Design → 3. Mold Manufacturing → 4. Trial Molding → 5. Mass Production → 6. Quality Inspection

## Case Studies
1. "Automotive" / "Precision Dashboard Components" / "Multi-cavity mold with ±0.05mm tolerance for tier-1 supplier"
2. "Medical" / "Surgical Device Housing" / "ISO Class 8 cleanroom molding for medical-grade PC enclosures"
3. "Electronics" / "Smart Home Device Shell" / "Dual-color overmolding with soft-touch TPE for consumer electronics"
