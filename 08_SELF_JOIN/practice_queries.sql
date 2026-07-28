#Query 1 - View Employees with Manager ID
SELECT
employee_id,
first_name,
manager_id
FROM employees;

#Query 2 - Basic SELF JOIN
SELECT
e.employee_id,
e.first_name AS employee_name,
m.first_name AS manager_name
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;

#Query 3 - Employee & Manager Full Names
SELECT
e.first_name AS employee_first_name,
e.last_name AS employee_last_name,
m.first_name AS manager_first_name,
m.last_name AS manager_last_name
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;

#Query 4 - Employees Managed by Vikram
SELECT
e.first_name,
m.first_name AS manager_name
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
WHERE m.first_name = 'Vikram';

#Query 5 - Employees Managed by Ayesha
SELECT
e.first_name,
m.first_name AS manager_name
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
WHERE m.first_name = 'Ayesha';

#Query 6 - Employee with Department and Manager
SELECT
e.first_name,
d.department_name,
m.first_name AS manager_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
JOIN employees m
ON e.manager_id = m.employee_id;

#Query 7 - Manager with Number of Employees
SELECT
m.first_name AS manager_name,
COUNT(e.employee_id) AS total_employees
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
GROUP BY m.first_name;

#Query 8 - Managers with More Than One Employee
SELECT
m.first_name AS manager_name,
COUNT(e.employee_id) AS total_employees
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
GROUP BY m.first_name
HAVING COUNT(e.employee_id) > 1;

#Query 9 - Employee, Manager & Salary
SELECT
e.first_name AS employee_name,
m.first_name AS manager_name,
e.salary
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
ORDER BY e.salary DESC;

#Query 10 Complete SELF JOIN Report
SELECT
e.employee_id,
e.first_name AS employee_name,
m.first_name AS manager_name,
d.department_name,
e.salary
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id
JOIN departments d
ON e.department_id = d.department_id
ORDER BY manager_name;