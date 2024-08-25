<div style="background-color: black; color: white; padding: 10px; border-radius: 5px;">

# LeetCode SQL Problem - 584: Find Customer Referee

## Problem Description

You are given a table named `Customer` with the following schema:

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| referee_id  | int     |

- `id` is the primary key column for this table.
- Each row of this table indicates the `id` of a customer, their `name`, and the `id` of the customer who referred them.

## Goal

Find the names of the customers that are **not** referred by the customer with `id = 2`.

## Example

**Input Table:**

| id  | name | referee_id |
|-----|------|------------|
| 1   | Will | null       |
| 2   | Jane | null       |
| 3   | Alex | 2          |
| 4   | Bill | null       |
| 5   | Zack | 1          |
| 6   | Mark | 2          |

**Output:**

| name |
|------|
| Will |
| Jane |
| Bill |
| Zack |

</div>
