#Query 1 – Create a Temporary Table Manually
CREATE TEMPORARY TABLE temp_employee
(
    employee_id INT,
    first_name VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO temp_employee
VALUES
(201,'John',65000),
(202,'Emma',72000),
(203,'David',55000);
SELECT * FROM temp_employee;

#Query 2 – Create Temporary Table from Existing Table
CREATE TEMPORARY TABLE high_salary_employees AS
SELECT
employee_id,
first_name,
salary
FROM employees
WHERE salary >= 60000;

SELECT *
FROM high_salary_employees;

#Query 3 – Temporary Table with Department Names
CREATE TEMPORARY TABLE employee_departments AS
SELECT e.employee_id,e.first_name,d.department_name,e.salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

SELECT *
FROM employee_departments;

#Query 4 – Temporary Table with Project Details
CREATE TEMPORARY TABLE employee_project_details AS
SELECT e.first_name,p.project_name
FROM employees e
INNER JOIN employee_projects ep
ON e.employee_id = ep.employee_id
INNER JOIN projects p
ON ep.project_id = p.project_id;

SELECT *
FROM employee_project_details;

#Query 5 – Aggregate Data in Temporary Table
CREATE TEMPORARY TABLE department_salary_summary AS
SELECT department_id,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary
FROM employees
GROUP BY department_id;

SELECT *
FROM department_salary_summary;

#Query 6 – Final Combined Query
CREATE TEMPORARY TABLE employee_summary AS
SELECT e.employee_id,e.first_name,d.department_name,e.salary,p.project_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
INNER JOIN employee_projects ep
ON e.employee_id = ep.employee_id
INNER JOIN projects p
ON ep.project_id = p.project_id;

SELECT *
FROM employee_summary
ORDER BY salary DESC;