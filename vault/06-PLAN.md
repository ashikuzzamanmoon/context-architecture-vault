# 06. Sequential Atomic Execution Plan

> **Strict Rule:** Complete steps in exact order (`1 -> 2 -> 3...`). NEVER mark `[x]` until EVERY command in that step's `Verification Gate` passes with exit code `0`.

---

- [ ] Step 1: Project Scaffold, Config & Design Tokens
  - **Vault Refs:** `vault/03-TOKENS.md`, `vault/04-STACK.md`
  - **Target Files:** `package.json`, `tsconfig.json`, `src/config/tokens.ts`
  - **Done Criteria:** Approved packages installed; strict TypeScript enabled; design tokens exported cleanly from a single config file.
  - **Verification Gate:** `npx tsc --noEmit && npm run build`

- [ ] Step 2: Database Schema, Types & Validation Tests
  - **Vault Refs:** `vault/05-SCHEMA.md`
  - **Target Files:** `src/db/schema.ts`, `src/tests/schema.test.ts`
  - **Done Criteria:** Exact schema & Zod/TS interfaces match `05-SCHEMA.md`; boundary tests cover valid and invalid inputs.
  - **Verification Gate:** `npx tsc --noEmit && npm test -- schema.test`

- [ ] Step 3: Core State Machine & Business Logic
  - **Vault Refs:** `vault/01-PRD.md`, `vault/02-STATE.md`, `vault/05-SCHEMA.md`
  - **Target Files:** `src/modules/coreService.ts`, `src/tests/coreService.test.ts`
  - **Done Criteria:** All allowed transitions work; forbidden transitions throw explicit typed errors; unit tests pass 100%.
  - **Verification Gate:** `npx tsc --noEmit && npm test -- coreService.test`

- [ ] Step 4: API / UI Integration Layer
  - **Vault Refs:** `vault/01-PRD.md`, `vault/03-TOKENS.md`, `vault/05-SCHEMA.md`
  - **Target Files:** `src/routes/...`, `src/tests/integration.test.ts`
  - **Done Criteria:** UI/API consumes real tokens & schemas; error/empty/loading states handled; integration tests pass.
  - **Verification Gate:** `npx tsc --noEmit && npm test`

- [ ] Step 5: End-to-End Verification & Production Build
  - **Vault Refs:** `vault/01-PRD.md`, `vault/04-STACK.md`
  - **Target Files:** *(No new features; verify full project)*
  - **Done Criteria:** Clean lint, strict typecheck, 100% passing test suite, clean production build, and `vault/02-STATE.md` updated to `COMPLETE`.
  - **Verification Gate:** `npm run lint && npx tsc --noEmit && npm test && npm run build`

