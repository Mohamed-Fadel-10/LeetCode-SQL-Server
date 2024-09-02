## 1729. Find Followers Count

**Difficulty:** Easy

### Table: Followers

| Column Name | Type |
|-------------|------|
| user_id     | int  |
| follower_id | int  |

- `(user_id, follower_id)` is the primary key (combination of columns with unique values) for this table.
- This table contains the IDs of a user and a follower in a social media app where the follower follows the user.

### Problem Statement

Write an SQL query that will, for each `user_id`, return the number of followers.

Return the result table ordered by `user_id` in ascending order.

### Example

**Input:**

Followers table:
| user_id | follower_id |
|---------|-------------|
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

**Output:**

| user_id | followers_count |
|---------|-----------------|
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

### Explanation:

- The followers of `0` are `{1}`. Hence, the `followers_count` for `user_id` `0` is `1`.
- The followers of `1` are `{0}`. Hence, the `followers_count` for `user_id` `1` is `1`.
- The followers of `2` are `{0, 1}`. Hence, the `followers_count` for `user_id` `2` is `2`.

