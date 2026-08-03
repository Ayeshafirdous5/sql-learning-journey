#Query 1 – ROW_NUMBER()
SELECT
    employee_id,
    first_name,
    salary,
    department_id,
    ROW_NUMBER() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS row_num
FROM employees;

#Query 2 – RANK()
SELECT
    employee_id,
    first_name,
    salary,
    department_id,
    RANK() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;

#Query 3 – DENSE_RANK()
SELECT
    employee_id,
    first_name,
    salary,
    department_id,
    DENSE_RANK() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS den_rank
FROM employees;

#Query 4 – AVG() OVER (PARTITION BY)
SELECT
    employee_id,
    first_name,
    salary,
    department_id,
    AVG(salary) OVER(
        PARTITION BY department_id
    ) AS average_department_salary
FROM employees;

#Query 5 – SUM() OVER (Rolling Total)
SELECT
    employee_id,
    first_name,
    salary,
    SUM(salary) OVER(
        ORDER BY employee_id
    ) AS running_total_salary
FROM employees;

#Query 6 – COUNT() OVER
SELECT
    employee_id,
    first_name,
    department_id,
    COUNT(*) OVER(
        PARTITION BY department_id
    ) AS employees_in_department
FROM employees;

#Query 7 – MAX() OVER
SELECT
    employee_id,
    first_name,
    salary,
    MAX(salary) OVER(
        PARTITION BY department_id
    ) AS highest_salary_department
FROM employees;

#Query 8 – Final Combined Query
SELECT
    employee_id,
    first_name,
    salary,
    department_id,
    ROW_NUMBER() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS row_num,
    RANK() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS salary_rank,
    DENSE_RANK() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS den_rank,
    AVG(salary) OVER(
        PARTITION BY department_id
    ) AS average_salary
FROM employees;