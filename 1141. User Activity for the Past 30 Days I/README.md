## 1141. User Activity for the Past 30 Days I

**Difficulty:** Easy

### Table: Activity

| Column Name   | Type    |
|---------------|---------|
| user_id       | int     |
| session_id    | int     |
| activity_date | date    |
| activity_type | enum    |

- The `activity_type` column is an ENUM of type `('open_session', 'end_session', 'scroll_down', 'send_message')`.
- This table may have duplicate rows.
- The table shows user activities for a social media website.
- Each session belongs to exactly one user.

### Problem Statement

Write an SQL query to find the daily active user count for a period of 30 days ending on **2019-07-27**, inclusively. A user is considered active on a day if they made at least one activity on that day.

Return the result table in any order.

### Example 1

**Input:**

Activity table:

| user_id | session_id | activity_date | activity_type |
|---------|------------|---------------|---------------|
| 1       | 1          | 2019-07-20    | open_session  |
| 1       | 1          | 2019-07-20    | scroll_down   |
| 1       | 1          | 2019-07-20    | end_session   |
| 2       | 4          | 2019-07-20    | open_session  |
| 2       | 4          | 2019-07-21    | send_message  |
| 2       | 4          | 2019-07-21    | end_session   |
| 3       | 2          | 2019-07-21    | open_session  |
| 3       | 2          | 2019-07-21    | send_message  |
| 3       | 2          | 2019-07-21    | end_session   |
| 4       | 3          | 2019-06-25    | open_session  |
| 4       | 3          | 2019-06-25    | end_session   |

**Output:**

| day        | active_users |
|------------|--------------|
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |

### Explanation:

- We only care about the days within the last 30 days of the period ending on **2019-07-27**.
- On **2019-07-20**, users 1 and 2 were active, so the count of active users is `2`.
- On **2019-07-21**, users 2 and 3 were active, so the count of active users is `2`.
- Days with zero active users are not included in the output.
