#Query 1 – Basic UNION
SELECT first_name, last_name
FROM employees
UNION
SELECT first_name, last_name
FROM employees;

#Query 2 – UNION ALL
SELECT first_name, last_name
FROM employees
UNION ALL
SELECT first_name, last_name
FROM employees;

#Query 3 – Employee Names + Department Names
SELECT first_name AS Name
FROM employees
UNION
SELECT department_name
FROM departments;

#Query 4 – Employee & Project Names
SELECT first_name AS Details
FROM employees
UNION
SELECT project_name
FROM projects;

#Query 5 – Labels using UNION
SELECT
first_name,
last_name,
'High Salary' AS Status
FROM employees
WHERE salary > 60000
UNION
SELECT
first_name,
last_name,
'Regular Salary' AS Status
FROM employees
WHERE salary <= 60000;

#Query 6 – UNION with ORDER BY
SELECT first_name, last_name
FROM employees
UNION
SELECT first_name, last_name
FROM employees
ORDER BY first_name;

#Final Query UNION
SELECT
first_name,
last_name,
'High Salary' AS Category
FROM employees
WHERE salary > 60000
UNION
SELECT
first_name,
last_name,
'Finance Department' AS Category
FROM employees
WHERE department_id = 5
ORDER BY first_name;