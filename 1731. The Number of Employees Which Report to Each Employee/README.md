# 1731. The Number of Employees Which Report to Each Employee
**Status:** Solved  
**Difficulty:** Easy  
**Topics:** SQL, Schema, Aggregation  

### Table: Employees

| Column Name  | Type    |
|-------------|--------|
| employee_id | int    |
| name        | varchar |
| reports_to  | int    |
| age         | int    |

- `employee_id` is the unique identifier for each employee.
- `reports_to` indicates the manager's ID that an employee reports to. It is `NULL` if the employee does not report to anyone.
- `age` represents the employee’s age.

### Problem Description
A manager is an employee with at least one direct report. Write a query to find all managers, along with:
- The number of employees who report directly to them (`reports_count`).
- The average age of these direct reports, rounded to the nearest integer (`average_age`).

Return the results ordered by `employee_id`.

### Example

#### Input
Employees table:
| employee_id | name    | reports_to | age |
|-------------|---------|------------|-----|
| 9           | Hercy   | null       | 43  |
| 6           | Alice   | 9          | 41  |
| 4           | Bob     | 9          | 36  |
| 2           | Winston | null       | 37  |

#### Output
| employee_id | name  | reports_count | average_age |
|-------------|-------|---------------|-------------|
| 9           | Hercy | 2             | 39          |

#### Explanation
- Hercy manages Alice and Bob, with ages (41 + 36) / 2 = **38.5**, rounded to **39**.

---

#### Example 2

#### Input
Employees table:
| employee_id | name    | reports_to | age |
|-------------|---------|------------|-----|
| 1           | Michael | null       | 45  |
| 2           | Alice   | 1          | 38  |
| 3           | Bob     | 1          | 42  |
| 4           | Charlie | 2          | 34  |
| 5           | David   | 2          | 40  |
| 6           | Eve     | 3          | 37  |
| 7           | Frank   | null       | 50  |
| 8           | Grace   | null       | 48  |

#### Output
| employee_id | name    | reports_count | average_age |
|-------------|---------|---------------|-------------|
| 1           | Michael | 2             | 40          |
| 2           | Alice   | 2             | 37          |
| 3           | Bob     | 1             | 37          |

#### Explanation
- Michael manages Alice and Bob: (38 + 42) / 2 = **40**.
- Alice manages Charlie and David: (34 + 40) / 2 = **37**.
- Bob manages Eve: **37**.
