# 04. Technology Stack, Versions & Tooling

> **Strict Environment Lock:** Agent must ONLY use libraries listed here. Introducing unapproved packages requires explicit user confirmation.

---

## 1. Core Runtime & Language
- **Runtime:** [e.g. Node.js `v24.x` / Python `3.12`]
- **Language:** [e.g. TypeScript `5.x` (`strict: true`)]
- **Package Manager:** [e.g. `npm` / `pnpm` / `uv`]

---

## 2. Approved Frameworks & Dependencies
| Category | Package | Target Version | Purpose |
| :--- | :--- | :--- | :--- |
| Framework | [e.g. Next.js / FastAPI] | `^x.y.z` | Core app router / API |
| Validation | [e.g. zod / pydantic] | `^x.y.z` | Runtime schema validation |
| Testing | [e.g. vitest / pytest] | `^x.y.z` | Unit & integration test suite |
| Styling | [e.g. TailwindCSS] | `^x.y.z` | UI styling |

---

## 3. Forbidden Libraries & Anti-Patterns
- **DO NOT** install `moment.js` (use native `Intl` or `date-fns`).
- **DO NOT** disable TypeScript checks (`@ts-ignore`, `any`).
- **DO NOT** bypass schema validation on API inputs.
- **DO NOT** hardcode secrets/keys in source files (use `.env`).

---

## 4. Canonical Verification Commands
> *Every Verification Gate in `06-PLAN.md` builds on these commands:*

- **Typecheck:** `npx tsc --noEmit`
- **Lint:** `npm run lint`
- **Unit / Integration Tests:** `npm test`
- **Production Build:** `npm run build`

---

## 5. Standard Directory Layout
```text
src/
├── config/          # Env & validated constants
├── db/              # Schema, migrations, client
├── modules/         # Domain logic (services, validators)
├── routes/          # API or UI routes
└── tests/           # Test suites mirroring src/
```

