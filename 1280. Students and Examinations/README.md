<div style="background-color: black; color: white; padding: 10px; border-radius: 5px;">

# LeetCode SQL Problem - 1280: Students and Examinations

## Problem Description

You are given three tables: `Students`, `Subjects`, and `Examinations` with the following schema:

### Students Table:

| Column Name  | Type    |
|--------------|---------|
| student_id   | int     |
| student_name | varchar |

- `student_id` is the primary key for this table.
- Each row contains the ID and name of a student in the school.

### Subjects Table:

| Column Name  | Type    |
|--------------|---------|
| subject_name | varchar |

- `subject_name` is the primary key for this table.
- Each row contains the name of a subject in the school.

### Examinations Table:

| Column Name  | Type    |
|--------------|---------|
| student_id   | int     |
| subject_name | varchar |

- There is no primary key for this table. It may contain duplicates.
- Each student from the `Students` table takes every course from the `Subjects` table.
- Each row indicates that a student with ID `student_id` attended the exam of `subject_name`.

## Goal

Write a solution to find the number of times each student attended each exam.

## Example

### Input:

**Students Table:**

| student_id | student_name |
|------------|--------------|
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

**Subjects Table:**

| subject_name |
|--------------|
| Math         |
| Physics      |
| Programming  |

**Examinations Table:**

| student_id | subject_name |
|------------|--------------|
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

### Output:

| student_id | student_name | subject_name | attended_exams |
|------------|--------------|--------------|----------------|
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

### Explanation:

- The result table should contain all students and all subjects.
- Alice attended the Math exam 3 times, the Physics exam 2 times, and the Programming exam 1 time.
- Bob attended the Math exam 1 time, the Programming exam 1 time, and did not attend the Physics exam.
- Alex did not attend any exams.
- John attended the Math exam 1 time, the Physics exam 1 time, and the Programming exam 1 time.

</div>
