#Query 1 - Employees with Their Department
SELECT
e.employee_id,
e.first_name,
e.last_name,
d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

#Query 2 - Employees with Their Projects
SELECT
e.employee_id,
e.first_name,
p.project_name
FROM employees e
INNER JOIN employee_projects ep
ON e.employee_id = ep.employee_id
INNER JOIN projects p
ON ep.project_id = p.project_id;

#Query 3 - Employee, Department & Project
SELECT
e.employee_id,
e.first_name,
d.department_name,
p.project_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
INNER JOIN employee_projects ep
ON e.employee_id = ep.employee_id
INNER JOIN projects p
ON ep.project_id = p.project_id;

#Query 4 - Employee Complete Information
SELECT
e.employee_id,
e.first_name,
e.last_name,
d.department_name,
e.salary,
p.project_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
INNER JOIN employee_projects ep
ON e.employee_id = ep.employee_id
INNER JOIN projects p
ON ep.project_id = p.project_id;

# Query 5 - Department Wise Employee Count
SELECT
d.department_name,
COUNT(e.employee_id) AS total_employees
FROM departments d
INNER JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

#Query 6 - Project Wise Employee Count
SELECT
p.project_name,
COUNT(ep.employee_id) AS total_employees
FROM projects p
INNER JOIN employee_projects ep
ON p.project_id = ep.project_id
GROUP BY p.project_name;

#Query 7 - Average Salary by Department
SELECT
d.department_name,
AVG(e.salary) AS average_salary
FROM departments d
INNER JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

#Query 8 - Employees Working on Sales Dashboard
SELECT
e.first_name,
p.project_name
FROM employees e
INNER JOIN employee_projects ep
ON e.employee_id = ep.employee_id
INNER JOIN projects p
ON ep.project_id = p.project_id
WHERE p.project_name = 'Sales Dashboard';

#Query 9 - Employees with Salary Above 60000
SELECT
e.first_name,
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
WHERE e.salary > 60000;

#Query 10 Final Multiple JOIN Report
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
ORDER BY d.department_name, e.salary DESC;