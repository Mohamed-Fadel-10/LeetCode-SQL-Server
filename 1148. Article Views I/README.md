<div style="background-color: black; color: white; padding: 10px; border-radius: 5px;">

# LeetCode SQL Problem - 1148: Article Views I

## Problem Description

You are given a table named `Views` with the following schema:

| Column Name | Type    |
|-------------|---------|
| article_id  | int     |
| author_id   | int     |
| viewer_id   | int     |
| view_date   | date    |

- There is no primary key for this table, so the table may have duplicate rows.
- Each row indicates that a viewer viewed an article (written by an author) on a specific date.
- Note that if `author_id` is equal to `viewer_id`, it indicates the same person.

## Goal

Write a solution to find all the authors who viewed at least one of their own articles.

## Example

**Input Table:**

| article_id | author_id | viewer_id | view_date  |
|------------|-----------|-----------|------------|
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |

**Output:**

| id   |
|------|
| 4    |
| 7    |

</div>
