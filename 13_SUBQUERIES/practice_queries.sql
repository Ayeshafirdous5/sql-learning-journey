#Query 1 – Subquery in WHERE Clause
SELECT *
FROM employees
WHERE department_id IN
(
    SELECT department_id
    FROM departments
    WHERE department_name = 'Data Analytics'
);

#Query 2 – Employees Earning Above Average Salary
SELECT
employee_id,
first_name,
salary
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);

#Query 3 – Subquery in SELECT Statement
#Display every employee along with the company's average salary.
SELECT
first_name,
salary,
(
    SELECT AVG(salary)
    FROM employees
) AS average_salary
FROM employees;

#Query 4 – Highest Salary
SELECT
first_name,
salary
FROM employees
WHERE salary =
(
    SELECT MAX(salary)
    FROM employees
);

#Query 5 – Lowest Salary
SELECT
first_name,
salary
FROM employees
WHERE salary =
(
    SELECT MIN(salary)
    FROM employees
);

#Query 6 – Employees Working on Customer Segmentation
SELECT first_name,last_name
FROM employees
WHERE employee_id IN
(
    SELECT employee_id
    FROM employee_projects
    WHERE project_id =
    (
        SELECT project_id
        FROM projects
        WHERE project_name = 'Customer Segmentation'
    )
);

#Query 7 – Average Salary by Department (Subquery in FROM)
SELECT
AVG(avg_salary) AS company_average
FROM
(
    SELECT
    department_id,
    AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS department_salary;

#Query 8 – Final Business Report
SELECT
employee_id,
first_name,
salary,
department_id
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary DESC;