#HAVING
#query 1
SELECT department,
AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

#HAVING + COUNT
#query 2
SELECT city,
COUNT(*) AS total_employees
FROM employees
GROUP BY city
HAVING COUNT(*) > 1;

#HAVING + AVG
#query 3
SELECT gender,
AVG(salary) AS average_salary
FROM employees
GROUP BY gender
HAVING AVG(salary) > 55000;

#LIMIT
#query 4 
SELECT *
FROM employees
LIMIT 5;

# ORDER BY + LIMIT
#query 5
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

#LIMIT with OFFSET
#query 6
SELECT *
FROM employees
LIMIT 2,4;

#Simple ALIAS
#query 7
SELECT
AVG(salary) AS Average_Salary
FROM employees;

#ALIAS + GROUP BY
#query 8
SELECT
department AS Department_Name,
AVG(salary) AS Average_Salary
FROM employees
GROUP BY department;

#ALIAS + COUNT
#query 9
SELECT
city AS Employee_City,
COUNT(*) AS Total_Employees
FROM employees
GROUP BY city;

#Final combined query
#query 10
SELECT
department,
AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000
ORDER BY average_salary DESC
LIMIT 3;
