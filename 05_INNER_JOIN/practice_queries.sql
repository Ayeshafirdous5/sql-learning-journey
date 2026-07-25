SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM projects;

SELECT * FROM employee_projects;

#Basic INNER JOIN
#query 1
SELECT
e.employee_id,
e.first_name,
e.last_name,
d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id;

#INNER JOIN using aliases
#query 2
SELECT
e.first_name,
e.salary,
d.department_name
FROM employees AS e
JOIN departments AS d
ON e.department_id = d.department_id;

#Employees and their Projects
#query 3 
SELECT
e.first_name,
p.project_name
FROM employees e
INNER JOIN employee_projects ep
ON e.employee_id = ep.employee_id
INNER JOIN projects p
ON ep.project_id = p.project_id;

#Complete Company Report
#query 4
SELECT
e.employee_id,
e.first_name,
e.last_name,
d.department_name,
p.project_name,
e.salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
INNER JOIN employee_projects ep
ON e.employee_id = ep.employee_id
INNER JOIN projects p
ON ep.project_id = p.project_id
ORDER BY e.employee_id;

#Data Analytics Department Employees
#query 5
SELECT
e.first_name,
e.last_name,
d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Data Analytics';

#Employees working on Sales Dashboard
#query 6
SELECT
e.first_name,
p.project_name
FROM employees e
INNER JOIN employee_projects ep
ON e.employee_id = ep.employee_id
INNER JOIN projects p
ON ep.project_id = p.project_id
WHERE p.project_name = 'Sales Dashboard';