# Day 9 - Multiple Table JOINs

## 📚 Overview

Today, I learned how to join multiple tables in MySQL to retrieve meaningful information from a relational database.

Unlike basic joins, multiple joins combine data from three or more related tables using common keys. This is one of the most important SQL skills for Data Analysts because real-world business databases are normalized across multiple tables.

---

## 🧠 What I Learned

### 🔹 What are Multiple Table JOINs?

Multiple Table JOINs combine data from more than two tables using relationships between primary keys and foreign keys.

In this practice, I joined the following tables:

- employees
- departments
- employee_projects
- projects

---

### 🔹 Why are Multiple JOINs Important?

Most real-world databases store information in separate tables to avoid duplication.

Using multiple joins allows us to:

- Combine employee and department information
- View project assignments
- Generate business reports
- Perform data analysis across different datasets

---

### 🔹 SQL Concepts Practiced

- INNER JOIN with multiple tables
- Table aliases
- GROUP BY
- COUNT()
- AVG()
- WHERE clause
- ORDER BY
- Aggregate functions
- Business reporting queries

---

### 🔹 Real-World Scenarios

The queries in this practice simulate common business reports, such as:

- Employee and department reports
- Project assignments
- Department-wise employee count
- Project-wise employee count
- Average salary by department
- Employees working on specific projects

---

## 🗂️ Database Used

**Database:** `company_db`

### Tables Used

- employees
- departments
- employee_projects
- projects

---

## 📂 Files Included

- practice_queries.sql
- README.md
- screenshots/

---

## 📸 Topics Practiced

- Joining multiple tables
- Employee and department reports
- Employee and project reports
- Department analytics
- Project analytics
- Aggregate functions with joins
- Sorting and filtering joined data

---

## 🚀 Key Takeaway

Multiple Table JOINs are essential for working with relational databases. They help combine information from different tables to produce meaningful insights and business reports. Mastering this concept is a key step toward becoming a Data Analyst.

---

**Completed as part of my SQL Learning Journey for Data Analytics. 🚀**