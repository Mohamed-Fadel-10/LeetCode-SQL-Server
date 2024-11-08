# 1789. Primary Department for Each Employee
**Status:** Solved  
**Difficulty:** Easy  
**Topics:** SQL, Schema, Pandas  

### Table: Employee

| Column Name   | Type    |
|---------------|---------|
| employee_id   | int     |
| department_id | int     |
| primary_flag  | varchar |

- `(employee_id, department_id)` is the primary key for this table.
- `employee_id` is the ID of the employee.
- `department_id` is the ID of the department the employee belongs to.
- `primary_flag` is an ENUM of type ('Y', 'N'), where 'Y' indicates the department is the primary department for the employee, and 'N' indicates it is not.

### Problem Description
Employees can belong to multiple departments. When an employee joins other departments, they need to decide which department is their primary one. If an employee belongs to only one department, the `primary_flag` column is 'N'.

Write a solution to report all employees with their primary department. For employees who belong to only one department, report that department.

### Example

#### Input
Employee table:
| employee_id | department_id | primary_flag |
|-------------|---------------|--------------|
| 1           | 1             | N            |
| 2           | 1             | Y            |
| 2           | 2             | N            |
| 3           | 3             | N            |
| 4           | 2             | N            |
| 4           | 3             | Y            |
| 4           | 4             | N            |

#### Output
| employee_id | department_id |
|-------------|---------------|
| 1           | 1             |
| 2           | 1             |
| 3           | 3             |
| 4           | 3             |

#### Explanation
- The primary department for employee 1 is 1.
- The primary department for employee 2 is 1.
- The primary department for employee 3 is 3.
- The primary department for employee 4 is 3.
