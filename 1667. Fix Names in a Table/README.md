## 1667. Fix Names in a Table

**Difficulty:** Easy

### Table: Users

| Column Name | Type    |
|-------------|---------|
| user_id     | int     |
| name        | varchar |

- `user_id` is the primary key for this table.
- This table contains the user ID and the name of the user, where the name consists of lowercase and uppercase characters.

### Problem Statement

Write an SQL query to fix the names such that:
- The first character of the name is uppercase.
- All other characters are lowercase.

The result should be ordered by `user_id`.

### Example 1

**Input:**

| user_id | name  |
|---------|-------|
| 1       | aLice |
| 2       | bOB   |

**Output:**

| user_id | name  |
|---------|-------|
| 1       | Alice |
| 2       | Bob   |

### Explanation:

- The name for `user_id 1` was `"aLice"`, which is corrected to `"Alice"`.
- The name for `user_id 2` was `"bOB"`, which is corrected to `"Bob"`.
  
The first letter is capitalized, and the rest of the characters are converted to lowercase.
