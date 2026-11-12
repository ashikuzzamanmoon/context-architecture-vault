# 03. Design Tokens & System Constants

> **Single Source of Truth:** All colors, fonts, spacing, and operational limits live here. Mirror these into `src/theme.ts` (or equivalent config).

---

## 1. Color Palette (60 / 30 / 10 Rule)
- **Backgrounds (60%)**
  - Primary Surface: `#0B0F17`
  - Secondary Card Surface: `#111827`
  - Elevated Surface / Modal: `#1F2937`
- **Text & Borders (30%)**
  - Text Primary: `#F9FAFB`
  - Text Secondary: `#9CA3AF`
  - Text Muted: `#6B7280`
  - Border Subtle: `rgba(255, 255, 255, 0.08)`
  - Border Focus: `#3B82F6`
- **Semantic Accents (10%)**
  - Brand Primary: `#3B82F6`
  - Success: `#10B981`
  - Warning: `#F59E0B`
  - Danger / Error: `#EF4444`

---

## 2. Typography
- **Heading / UI Font:** `Inter`, sans-serif (Bangla if applicable: `Hind Siliguri`)
- **Monospace / Code Font:** `JetBrains Mono`, monospace
- **Type Scale:**
  - `h1`: `32px` / weight `700` / line-height `1.2`
  - `h2`: `24px` / weight `600` / line-height `1.3`
  - `body`: `16px` / weight `400` / line-height `1.5`
  - `caption`: `13px` / weight `500` / line-height `1.4`

---

## 3. Layout, Spacing & Motion
- **Grid Unit:** `4px` base (`4, 8, 12, 16, 24, 32, 48, 64px`)
- **Border Radius:** Small `6px`, Card `12px`, Pill `9999px`
- **Transitions:** `150ms cubic-bezier(0.16, 1, 0.3, 1)` (never linear)

---

## 4. Operational Constants
- `API_TIMEOUT_MS`: `10000`
- `MAX_RETRY_ATTEMPTS`: `3`
- `DEFAULT_PAGE_SIZE`: `20`

