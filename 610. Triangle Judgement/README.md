## 610. Triangle Judgement

**Difficulty:** Easy

### Table: Triangle

| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |
| z           | int  |

- `(x, y, z)` is the primary key for this table, ensuring unique records of line segment lengths.
- Each row contains the lengths of three line segments (`x`, `y`, and `z`).

### Problem Statement

Write an SQL query to determine if three line segments can form a triangle for each row in the `Triangle` table. According to the triangle inequality theorem, three sides can form a triangle if:

- \( x + y > z \)
- \( x + z > y \)
- \( y + z > x \)

If the condition holds, the triangle can be formed, and the result should return `"Yes"`, otherwise `"No"`.

Return the result in any order.

### Example 1

**Input:**

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

**Output:**

| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |

### Explanation:

- For the first row, `13 + 15` is not greater than `30`, so it cannot form a triangle, thus the result is `"No"`.
- For the second row, `10 + 20 > 15`, `10 + 15 > 20`, and `15 + 20 > 10`, so the sides form a valid triangle, and the result is `"Yes"`.
