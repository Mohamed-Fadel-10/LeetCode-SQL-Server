## 1070. Product Sales Analysis III

**Difficulty:** Medium

### Table: Sales

| Column Name | Type  |
|-------------|-------|
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |

- `(sale_id, year)` is the primary key for this table, ensuring unique records.
- `product_id` is a foreign key referring to the `Product` table.
- Each row represents a sale of a product in a particular year, showing the `quantity` sold and the unit `price`.

### Table: Product

| Column Name  | Type    |
|--------------|---------|
| product_id   | int     |
| product_name | varchar |

- `product_id` is the primary key for this table, ensuring unique product records.
- Each row represents the name of a product.

### Problem Statement :

Write an SQL query to select the `product_id`, the `first_year` (the first year the product was sold), `quantity`, and `price` for the first year of every product sold.

Return the result in any order.

### Example 1

**Input:**

Sales table :

| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |

Product table:

| product_id | product_name |
|------------|--------------|
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |

**Output :**

| product_id | first_year | quantity | price |
|------------|------------|----------|-------|
| 100        | 2008       | 10       | 5000  |
| 200        | 2011       | 15       | 9000  |

### Explanation:

- Product `100` (Nokia) was first sold in 2008 with a quantity of 10 units and a price of 5000 per unit.
- Product `200` (Apple) was first sold in 2011 with a quantity of 15 units and a price of 9000 per unit.
- The query should return only the first sale year of each product along with the relevant `quantity` and `price`.
