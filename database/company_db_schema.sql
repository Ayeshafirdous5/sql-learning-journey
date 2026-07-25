CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    department_id INT,
    salary INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100)
);

CREATE TABLE employee_projects (
    employee_id INT,
    project_id INT
);

INSERT INTO departments VALUES
(1,'Data Analytics'),
(2,'Sales'),
(3,'HR'),
(4,'Marketing'),
(5,'Finance');

INSERT INTO employees VALUES
(101,'Ayesha','Firdous','Female',1,55000),
(102,'Rahul','Sharma','Male',2,42000),
(103,'Sneha','Reddy','Female',3,47000),
(104,'Arjun','Patel','Male',2,65000),
(105,'Fatima','Khan','Female',4,52000),
(106,'Vikram','Singh','Male',1,78000),
(107,'Neha','Verma','Female',2,46000),
(108,'Karan','Mehta','Male',1,69000);

INSERT INTO projects VALUES
(201,'Sales Dashboard'),
(202,'HR Analytics'),
(203,'Customer Segmentation'),
(204,'Inventory Analysis'),
(205,'Power BI Migration');

INSERT INTO employee_projects VALUES
(101,201),
(101,205),
(102,201),
(103,202),
(104,203),
(105,204),
(106,205),
(108,201);