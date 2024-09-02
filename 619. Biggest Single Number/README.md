## 619. Biggest Single Number

**Difficulty:** Easy

### Table: MyNumbers

| Column Name | Type |
|-------------|------|
| num         | int  |

- This table may contain duplicates (in other words, there is no primary key for this table in SQL).
- Each row of this table contains an integer.

### Problem Statement

A single number is a number that appeared only once in the MyNumbers table.

Write an SQL query to find the largest single number. If there is no single number, report `null`.

Return the result table in any order.

### Example 1

**Input:**

MyNumbers table:

| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

**Output:**

| num |
|-----|
| 6   |

**Explanation:**

- The single numbers are `1`, `4`, `5`, and `6`.
- Since `6` is the largest single number, we return it.

### Example 2

**Input:**

MyNumbers table:

| num |
|-----|
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

**Output:**

| num  |
|------|
| null |

**Explanation:**

- There are no single numbers in the input table, so we return `null`.
