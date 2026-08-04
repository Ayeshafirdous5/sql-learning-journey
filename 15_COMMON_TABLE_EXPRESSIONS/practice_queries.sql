#Query 1 – Basic CTE
WITH EmployeeSalary AS
(
    SELECT
        employee_id,
        first_name,
        salary
    FROM employees
)
SELECT *
FROM EmployeeSalary;

#Query 2 – CTE with WHERE Clause
WITH HighSalaryEmployees AS
(
    SELECT
        employee_id,
        first_name,
        salary
    FROM employees
    WHERE salary > 60000
)
SELECT *
FROM HighSalaryEmployees;

#Query 3 – CTE with Aggregate Function
WITH DepartmentAverage AS
(
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT *
FROM DepartmentAverage;

#Query 4 – CTE with JOIN
WITH EmployeeDepartment AS
(
    SELECT
        e.employee_id,
        e.first_name,
        d.department_name,
        e.salary
    FROM employees e
    INNER JOIN departments d
    ON e.department_id = d.department_id
)
SELECT *
FROM EmployeeDepartment;

#Query 5 – Multiple CTEs
WITH HighSalary AS
(SELECT employee_id,first_name,department_id,salary
    FROM employees
    WHERE salary > 60000
),
DepartmentInfo AS
(SELECT department_id,department_name
    FROM departments
)
SELECT h.employee_id,h.first_name,d.department_name,h.salary
FROM HighSalary h
INNER JOIN DepartmentInfo d
ON h.department_id = d.department_id;

#Query 6 – CTE with Project Information
WITH EmployeeProjects AS
(
    SELECT
        e.first_name,
        p.project_name
    FROM employees e
    INNER JOIN employee_projects ep
        ON e.employee_id = ep.employee_id
    INNER JOIN projects p
        ON ep.project_id = p.project_id
)
SELECT *
FROM EmployeeProjects;

#Query 7 – Final Combined CTE
WITH DepartmentSalary AS
(SELECT department_id,AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT e.employee_id,e.first_name,d.department_name,e.salary,ds.average_salary
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
INNER JOIN DepartmentSalary ds
    ON e.department_id = ds.department_id
ORDER BY e.salary DESC;