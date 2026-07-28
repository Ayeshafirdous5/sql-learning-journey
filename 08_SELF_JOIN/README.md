# Day 8 - SELF JOIN

## 📚 Overview

Today, I learned **SELF JOIN** in MySQL.

A SELF JOIN is a regular SQL join where a table is joined with itself. It is useful when the data within a single table has a relationship between its own records, such as an employee and their manager.

---

## 🧠 What I Learned

### 🔹 What is SELF JOIN?

A SELF JOIN joins a table with itself using different aliases. Since both tables are actually the same table, aliases are used to distinguish between them.

---

### 🔹 Why Do We Use SELF JOIN?

SELF JOIN is used when records in the same table are related to one another.

Common use cases include:

- Employee and Manager relationships
- Organizational hierarchy
- Family tree relationships
- Product recommendations
- Category and Subcategory structures

---

### 🔹 Employee–Manager Relationship

In this practice, I added a **manager_id** column to the `employees` table.

The `manager_id` references another employee's `employee_id`, allowing each employee to be linked with their manager.

Example:

| Employee | Manager |
|----------|---------|
| Rahul | Ayesha |
| Sneha | Ayesha |
| Arjun | Vikram |
| Fatima | Vikram |

---

### 🔹 Aliases in SELF JOIN

Aliases make SELF JOIN queries easier to read.

Example:

- `e` → Employee
- `m` → Manager

Using aliases helps distinguish between the two instances of the same table.

---

### 🔹 Combining SELF JOIN with Other Tables

I also combined SELF JOIN with the **departments** table to display:

- Employee Name
- Manager Name
- Department
- Salary

This demonstrates how SELF JOIN can be used together with other SQL JOINs to create more meaningful reports.

---

### 🔹 GROUP BY with SELF JOIN

I practiced using `GROUP BY` with SELF JOIN to:

- Count employees under each manager
- Identify managers supervising multiple employees

This is useful for organizational reporting and workforce analysis.

---

## 🗂️ Database Used

- company_db

### Tables Used

- employees
- departments

---

## 📂 Files Included

- practice_queries.sql
- README.md
- screenshots/

---

## 📸 Topics Practiced

- Basic SELF JOIN
- Employee–Manager Relationship
- Using Aliases
- Joining Multiple Tables
- GROUP BY with SELF JOIN
- HAVING with SELF JOIN
- ORDER BY with SELF JOIN

---

## 🚀 Key Takeaway

SELF JOIN is an essential SQL concept for working with hierarchical data. It enables us to establish relationships within the same table and is commonly used in employee-management systems, organizational structures, and real-world business reporting.

---

**Completed as part of my SQL Learning Journey for Data Analytics. 🚀**