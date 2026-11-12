# 01. Product Requirements Document (PRD)

## 1. Executive Summary
- **Project Name:** [e.g. My Saas Platform / AI Video Pipeline]
- **One-Line Pitch:** [A clear, concise summary of what this software does]
- **Target Audience:** [Who will use this? e.g. Content creators, developers, internal team]

---

## 2. Problem Statement & Value Proposition
- **Current Friction:** [What pain point or inefficiency does this solve?]
- **Proposed Solution:** [How does this project solve it cleanly?]
- **Success Criteria:** [Quantifiable outcome, e.g. "Renders a 60s video in <30 seconds", "API responds in <100ms"]

---

## 3. Core Feature Specifications (In Scope)
### Feature A: [Feature Name]
- **Description:** [What it does]
- **User Flow:**
  1. User triggers action X
  2. System processes Y
  3. Output Z is displayed/returned
- **Acceptance Criteria:** [Specific conditions that prove it works]

### Feature B: [Feature Name]
- **Description:** [What it does]
- **Acceptance Criteria:** [Specific conditions that prove it works]

---

## 4. Explicit Out-of-Scope (DO NOT BUILD)
> *Crucial to prevent feature creep and AI drift during implementation.*

- [ ] Feature X (e.g., No multi-tenancy in v1; single organization only)
- [ ] Feature Y (e.g., No custom OAuth providers; email/password only)
- [ ] Feature Z (e.g., No mobile app; responsive web only)

---

## 5. Non-Negotiable Constraints & Guarantees
- Performance requirement: [e.g. P95 latency < 200ms]
- Security requirement: [e.g. All API routes require authenticated JWT bearer token]
- Storage requirement: [e.g. Temporary files must be purged after 24 hours]

