## 1211. Queries Quality and Percentage

**Difficulty:** Easy

### Table: Queries

| Column Name | Type    |
|-------------|---------|
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |

- This table may have duplicate rows.
- This table contains information collected from some queries on a database.
- The `position` column has a value from 1 to 500.
- The `rating` column has a value from 1 to 5. A query with a rating less than 3 is considered a poor query.

### Problem Statement

We define **query quality** as the average of the ratio between query `rating` and its `position`.

We also define **poor query percentage** as the percentage of all queries with a `rating` less than 3.

Write an SQL query to find each `query_name`, the `quality`, and `poor_query_percentage`.

Both `quality` and `poor_query_percentage` should be rounded to 2 decimal places.

### Example

**Input:**

Queries table:
| query_name | result            | position | rating |
|------------|-------------------|----------|--------|
| Dog        | Golden Retriever  | 1        | 5      |
| Dog        | German Shepherd   | 2        | 5      |
| Dog        | Mule              | 200      | 1      |
| Cat        | Shirazi           | 5        | 2      |
| Cat        | Siamese           | 3        | 3      |
| Cat        | Sphynx            | 7        | 4      |

**Output:**
| query_name | quality | poor_query_percentage |
|------------|---------|-----------------------|
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |

### Explanation:

- **Dog** queries quality is calculated as:
  \[
  \text{quality} = \left(\frac{5}{1} + \frac{5}{2} + \frac{1}{200}\right) / 3 = 2.50
  \]
  The poor query percentage for **Dog** is:
  \[
  \text{poor\_query\_percentage} = \left(\frac{1}{3}\right) * 100 = 33.33\%
  \]

- **Cat** queries quality is calculated as:
  \[
  \text{quality} = \left(\frac{2}{5} + \frac{3}{3} + \frac{4}{7}\right) / 3 = 0.66
  \]
  The poor query percentage for **Cat** is:
  \[
  \text{poor\_query\_percentage} = \left(\frac{1}{3}\right) * 100 = 33.33\%
  \]
