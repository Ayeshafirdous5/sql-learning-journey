#Basic LEFT JOIN
#query 1
SELECT
e.employee_id,
e.first_name,
e.last_name,
d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

#LEFT JOIN with Aliases
#query 2
SELECT
e.first_name,
e.salary,
d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

#Employees with Projects
#query 3
SELECT
e.first_name,
p.project_name
FROM employees e
LEFT JOIN employee_projects ep
ON e.employee_id = ep.employee_id
LEFT JOIN projects p
ON ep.project_id = p.project_id;

#Complete Employee Report
#query 4
SELECT e.employee_id,e.first_name,e.last_name,d.department_name,p.project_name,e.salary
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
LEFT JOIN employee_projects ep
ON e.employee_id = ep.employee_id
LEFT JOIN projects p
ON ep.project_id = p.project_id
ORDER BY e.employee_id;

#Data Analytics Employees
#query 5
SELECT
e.first_name,
d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Data Analytics';

#Employees without Projects
#query 6
SELECT
e.employee_id,
e.first_name,
p.project_name
FROM employees e
LEFT JOIN employee_projects ep
ON e.employee_id = ep.employee_id
LEFT JOIN projects p
ON ep.project_id = p.project_id
WHERE p.project_name IS NULL;

#Employees with Salary Above 60000
#query 7
SELECT
e.first_name,
e.salary,
d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE e.salary > 60000;

#Ordered LEFT JOIN
#query 8
SELECT
e.first_name,
d.department_name,
e.salary
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
ORDER BY e.salary DESC;