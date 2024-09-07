## 596. Classes More Than 5 Students

**Difficulty:** Easy

### Table: Courses

| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |

- The combination `(student, class)` is the primary key for this table, ensuring unique records.
- Each row represents a student and the class in which they are enrolled.

### Problem Statement

Write an SQL query to find all classes that have at least five students.

Return the result table in any order.

### Example 1

**Input:**

Courses table:

| student | class    |
|---------|----------|
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |

**Output:**

| class   |
|---------|
| Math    |

### Explanation:

- **Math** has 6 students, which meets the condition of having at least 5 students, so we include it.
- **English**, **Biology**, and **Computer** have fewer than 5 students, so they are not included in the result.
