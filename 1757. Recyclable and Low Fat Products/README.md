<div style="background-color: black; color: white; padding: 10px; border-radius: 5px;">

# LeetCode SQL Problem - 1757: Recyclable and Low Fat Products

## Problem Description

You are given a table named `Products` with the following schema:

| Column Name | Type    |
|-------------|---------|
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |

- `product_id` is the primary key for this table.
- `low_fats` is an ENUM with values ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
- `recyclable` is an ENUM with values ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.

## Goal

The goal is to find the IDs of products that are both low fat and recyclable.

## Example

**Input Table:**

| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

**Output:**

| product_id |
|------------|
| 1          |
| 3          |

## Explanation

Only products with `product_id` 1 and 3 are both low fat (`low_fats = 'Y'`) and recyclable (`recyclable = 'Y'`).

</div>
