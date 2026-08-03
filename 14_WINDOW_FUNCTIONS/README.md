# Day 14 - Window Functions in MySQL

## 📚 Concepts Learned

Today I learned about Window Functions in MySQL.

Unlike `GROUP BY`, Window Functions perform calculations across a set of rows while keeping every individual row in the result.

### Topics Covered

- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- PARTITION BY
- AVG() OVER()
- SUM() OVER()
- COUNT() OVER()
- MAX() OVER()

## Key Difference

- `GROUP BY` groups rows and returns one result per group.
- `Window Functions` keep all rows while performing calculations within each partition.

## Practice Queries

- Row Number by Department
- Salary Rank within Departments
- Dense Rank
- Average Salary per Department
- Running Total of Salaries
- Combined Window Function Example

## Files Included

- `practice_queries.sql`
- `screenshots/`

## Skills Practiced

- Window Functions
- Ranking Employees
- Partitioning Data
- Running Totals
- Aggregate Window Functions

This is part of my SQL Learning Journey for Data Analytics.