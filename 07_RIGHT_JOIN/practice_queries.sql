#Query 1 - Basic RIGHT JOIN
SELECT
e.employee_id,
e.first_name,
e.last_name,
d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

#Query 2 - RIGHT JOIN with Aliases
SELECT
e.first_name,
e.salary,
d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

#Query 3 - Departments Without Employees 
SELECT
d.department_name,
e.first_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id
WHERE e.employee_id IS NULL;

#Query 4 - Complete Department Report
SELECT
d.department_name,
e.employee_id,
e.first_name,
e.salary
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id
ORDER BY d.department_name;

#Query 5 - Average Salary Department Wise
SELECT
d.department_name,
AVG(e.salary) AS average_salary
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name;

#Query 6 - Employee Count Department Wise
SELECT
d.department_name,
COUNT(e.employee_id) AS total_employees
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name;

#Query 7 - Departments with Average Salary Above 50000
SELECT
d.department_name,
AVG(e.salary) AS average_salary
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 50000;

#Query 8 - RIGHT JOIN with ORDER BY
SELECT
d.department_name,
e.first_name,
e.salary
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id
ORDER BY e.salary DESC;

#Query 9 - Multiple RIGHT JOIN
SELECT
d.department_name,
e.first_name,
p.project_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id
LEFT JOIN employee_projects ep
ON e.employee_id = ep.employee_id
LEFT JOIN projects p
ON ep.project_id = p.project_id;

#Query 10 - Complete RIGHT JOIN Report
SELECT d.department_name,e.employee_id,e.first_name,e.last_name,p.project_name,e.salary
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id
LEFT JOIN employee_projects ep
ON e.employee_id = ep.employee_id
LEFT JOIN projects p
ON ep.project_id = p.project_id
ORDER BY d.department_name;