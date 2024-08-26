<div style="background-color: black; color: white; padding: 10px; border-radius: 5px;">

# LeetCode SQL Problem - 620: Not Boring Movies

## Problem Description

You are given a table named `Cinema` with the following schema:

### Cinema Table:

| Column Name    | Type     |
|----------------|----------|
| id             | int      |
| movie          | varchar  |
| description    | varchar  |
| rating         | float    |

- `id` is the primary key for this table.
- Each row contains information about the name of a movie, its description, and its rating.
- `rating` is a float with 2 decimal places in the range [0, 10].

## Goal

Write a solution to report the movies with:
1. An odd-numbered `id`.
2. A `description` that is not "boring".

The result should be ordered by `rating` in descending order.

## Example

### Input:

**Cinema Table:**

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |

### Output:

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |

### Explanation:

We have three movies with odd-numbered IDs: 1, 3, and 5. The movie with ID = 3 is boring, so we do not include it in the result.

</div>
