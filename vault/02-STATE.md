# 02. Active State Machine & Execution Tracker

> **Live Checkpoint File:** Coding agent MUST update this file immediately after passing each step in `06-PLAN.md`.

---

## 1. Execution Checkpoint
- **Project Status:** `PLANNING` | `IN_PROGRESS` | `BLOCKED` | `COMPLETE` (Current: `PLANNING`)
- **Last Completed Step:** `None`
- **Active Step:** `Step 1`
- **Active Blockers:** `None`

### Checkpoint History Log
| Step | Status | Completed At | Notes / Verified Gate |
| :--- | :--- | :--- | :--- |
| Step 0 | LOCKED | YYYY-MM-DD HH:MM | Vault initialized |

---

## 2. Application Runtime State Machine
> *Define every valid state transition so the agent never invents undefined UI/API states.*

### Core Flow States
- **`IDLE`**: Initial state before user/system input.
- **`LOADING`**: Asynchronous operation in flight (show skeleton/spinner; disable duplicate submit).
- **`SUCCESS`**: Operation succeeded with valid payload.
- **`EMPTY`**: Valid response returned, zero records found (render actionable empty-state CTA).
- **`ERROR`**: Operation failed cleanly with human-readable message and retry trigger.

### Allowed Transitions
- `IDLE -> LOADING` (Trigger: User submits / Init runs)
- `LOADING -> SUCCESS` (Trigger: HTTP 200 & schema validation passes)
- `LOADING -> EMPTY` (Trigger: HTTP 200 & array length === 0)
- `LOADING -> ERROR` (Trigger: HTTP 4xx/5xx or timeout > `TIMEOUT_MS`)
- `ERROR -> LOADING` (Trigger: User clicks Retry)

### Forbidden Transitions
- Never jump directly from `ERROR` to `SUCCESS` without passing through `LOADING`.
- Never allow concurrent `LOADING` triggers for the same mutation key.

