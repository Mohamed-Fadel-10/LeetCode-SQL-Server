<div style="background-color: black; color: white; padding: 10px; border-radius: 5px;">

# LeetCode SQL Problem - 1251: Average Selling Price

## Problem Description

You are given two tables named `Prices` and `UnitsSold` with the following schema:

### Prices Table:

| Column Name | Type  |
|-------------|-------|
| product_id  | int   |
| start_date  | date  |
| end_date    | date  |
| price       | int   |

- `(product_id, start_date, end_date)` is the primary key for this table.
- Each row indicates the price of the product during the period from `start_date` to `end_date`.
- For each `product_id`, there are no overlapping periods.

### UnitsSold Table:

| Column Name   | Type  |
|---------------|-------|
| product_id    | int   |
| purchase_date | date  |
| units         | int   |

- This table may contain duplicate rows.
- Each row indicates the date, units, and `product_id` of each product sold.

## Goal

Write a solution to find the average selling price for each product. The `average_price` should be rounded to 2 decimal places.

## Example

### Input:

**Prices Table:**

| product_id | start_date | end_date   | price |
|------------|------------|------------|-------|
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

**UnitsSold Table:**

| product_id | purchase_date | units |
|------------|---------------|-------|
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

### Output:

| product_id | average_price |
|------------|---------------|
| 1          | 6.96          |
| 2          | 16.96         |

### Explanation:

- **Average selling price** = Total Price of Product / Number of Products Sold.
- For `product 1` = ((100 * 5) + (15 * 20)) / 115 = 6.96.
- For `product 2` = ((200 * 15) + (30 * 30)) / 230 = 16.96.

</div>
