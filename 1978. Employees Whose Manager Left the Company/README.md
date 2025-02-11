# 1978. Employees Whose Manager Left the Company
**Status:** Solved  
**Difficulty:** Easy  
**Topics:** SQL, Filtering, Joins  

### Table: Employees

| Column Name  | Type    |
|-------------|--------|
| employee_id | int    |
| name        | varchar |
| manager_id  | int    |
| salary      | int    |

- `employee_id` is the unique identifier for each employee.
- `manager_id` indicates the ID of the employee’s manager. It is `NULL` if the employee does not have a manager.
- `salary` represents the employee’s salary.

### Problem Description
Find all employees:
- Whose salary is **strictly less than $30,000**.
- Whose **manager has left the company** (i.e., the `manager_id` is present in the table, but no corresponding employee exists with that `employee_id`).

Return the result ordered by `employee_id`.

---

### Example

#### Input
Employees table:
| employee_id | name      | manager_id | salary |
|-------------|-----------|------------|--------|
| 3           | Mila      | 9          | 60301  |
| 12          | Antonella | null       | 31000  |
| 13          | Emery     | null       | 67084  |
| 1           | Kalel     | 11         | 21241  |
| 9           | Mikaela   | null       | 50937  |
| 11          | Joziah    | 6          | 28485  |

#### Output
| employee_id |
|-------------|
| 11          |

#### Explanation
- Employees with a salary < $30,000: **1 (Kalel), 11 (Joziah)**
- **Kalel (employee_id = 1)** has a manager **Joziah (employee_id = 11)** who still exists in the table.
- **Joziah (employee_id = 11)** has a manager **employee_id = 6**, but there is no entry for employee **6** in the table, meaning the manager has left.
- Hence, the result includes **only employee_id = 11**.
