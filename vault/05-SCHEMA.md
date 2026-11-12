# 05. Database Schema & API Contracts

> **Immutable Contract:** Never alter column names, field types, or endpoint paths on the fly. Update this file FIRST, then migrate code.

---

## 1. Database Schema
### Table / Collection: `items` (Example)
| Column | Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `id` | `uuid` | `PRIMARY KEY` | Unique record identifier |
| `title` | `varchar(160)` | `NOT NULL` | Display title |
| `status` | `enum` | `'draft' \| 'active' \| 'archived'` | Lifecycle state |
| `created_at` | `timestamp` | `DEFAULT NOW()` | Creation timestamp (UTC) |

---

## 2. Shared Data Types (TypeScript / Zod)
```ts
export type ItemStatus = "draft" | "active" | "archived";

export interface ItemRecord {
  id: string;
  title: string;
  status: ItemStatus;
  createdAt: string;
}
```

---

## 3. API Endpoint Contracts

### `POST /api/v1/items`
- **Auth Required:** Yes (`Bearer <token>`)
- **Request Body:**
  ```json
  {
    "title": "Sample Task"
  }
  ```
- **Success Response (`201 Created`):**
  ```json
  {
    "data": {
      "id": "uuid",
      "title": "Sample Task",
      "status": "draft",
      "createdAt": "2026-01-01T00:00:00.000Z"
    }
  }
  ```
- **Error Response (`400 Bad Request`):**
  ```json
  {
    "error": {
      "code": "VALIDATION_ERROR",
      "message": "Title must be between 1 and 160 characters."
    }
  }
  ```

