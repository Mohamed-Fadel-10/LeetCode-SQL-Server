<div style="background-color: black; color: white; padding: 10px; border-radius: 5px;">

# LeetCode SQL Problem - 577: Employee Bonus

## Problem Description

You are given two tables, `Employee` and `Bonus`, with the following schemas:

### Employee Table:

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

- `empId` is the unique identifier for each employee.
- Each row indicates the name, ID, salary of an employee, and the ID of their supervisor.

### Bonus Table:

| Column Name | Type    |
|-------------|---------|
| empId       | int     |
| bonus       | int     |

- `empId` is the unique identifier for each employee and a foreign key referencing `empId` from the `Employee` table.
- Each row contains the ID of an employee and their respective bonus amount.

## Goal

Write a solution to report the `name` and `bonus` amount of each employee who has a bonus less than 1000.

## Example

### Input:

**Employee Table:**

| empId | name   | supervisor | salary |
|-------|--------|------------|--------|
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

**Bonus Table:**

| empId | bonus |
|-------|-------|
| 2     | 500   |
| 4     | 2000  |

### Output:

| name | bonus |
|------|-------|
| Brad | null  |
| John | null  |
| Dan  | 500   |

</div>
