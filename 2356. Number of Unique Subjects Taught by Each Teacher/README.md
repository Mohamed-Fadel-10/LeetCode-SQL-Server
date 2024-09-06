## 2356. Number of Unique Subjects Taught by Each Teacher

**Difficulty:** Easy

### Table: Teacher

| Column Name | Type |
|-------------|------|
| teacher_id  | int  |
| subject_id  | int  |
| dept_id     | int  |

- The `(subject_id, dept_id)` is the primary key (combination of unique columns) of this table.
- Each row indicates that the teacher with `teacher_id` teaches the subject with `subject_id` in the department with `dept_id`.

### Problem Statement

Write an SQL query to calculate the number of unique subjects each teacher teaches at the university.

Return the result table in any order.

### Example 1

**Input:**

Teacher table:

| teacher_id | subject_id | dept_id |
|------------|------------|---------|
| 1          | 2          | 3       |
| 1          | 2          | 4       |
| 1          | 3          | 3       |
| 2          | 1          | 1       |
| 2          | 2          | 1       |
| 2          | 3          | 1       |
| 2          | 4          | 1       |

**Output:**

| teacher_id | cnt |
|------------|-----|
| 1          | 2   |
| 2          | 4   |

### Explanation:

- **Teacher 1**:
  - Teaches subject 2 in departments 3 and 4 (counted as one unique subject).
  - Teaches subject 3 in department 3 (another unique subject).
  - Therefore, Teacher 1 teaches 2 unique subjects.
  
- **Teacher 2**:
  - Teaches subject 1, 2, 3, and 4, all in department 1.
  - Each subject is unique.
  - Therefore, Teacher 2 teaches 4 unique subjects.
