DROP DATABASE IF EXISTS online_store;
CREATE DATABASE online_store;

USE online_store;

CREATE TABLE employees(
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT,
    joining_date DATE
);

INSERT INTO employees VALUES
(101,'Ayesha','Firdous','Female','Data','Hyderabad',55000,'2023-01-15'),
(102,'Rahul','Sharma','Male','Sales','Mumbai',42000,'2022-05-10'),
(103,'Sneha','Reddy','Female','HR','Hyderabad',47000,'2021-03-18'),
(104,'Arjun','Patel','Male','Finance','Pune',65000,'2020-09-22'),
(105,'Fatima','Khan','Female','Marketing','Delhi',52000,'2023-07-11'),
(106,'Vikram','Singh','Male','IT','Bangalore',78000,'2019-11-03'),
(107,'Neha','Verma','Female','Sales','Chennai',46000,'2022-02-14'),
(108,'Karan','Mehta','Male','Data','Hyderabad',69000,'2021-08-25'),
(109,'Priya','Nair','Female','IT','Kochi',73000,'2020-12-19'),
(110,'Rohan','Das','Male','Marketing','Kolkata',51000,'2023-04-09');
