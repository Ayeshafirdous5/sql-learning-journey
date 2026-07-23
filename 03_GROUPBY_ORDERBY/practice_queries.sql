#GROUP BY
#query 1
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

#query 2
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

#query 3
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

#query 4
SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;

#query 5
SELECT city, COUNT(*) AS total
FROM employees
GROUP BY city;

#query 6
SELECT gender,
AVG(salary) AS average_salary
FROM employees
GROUP BY gender;

#query 7
SELECT department,
gender,
COUNT(*) AS total
FROM employees
GROUP BY department, gender;

#ORDER BY
#query 8
SELECT *
FROM employees
ORDER BY first_name;

#query 9
SELECT *
FROM employees
ORDER BY salary DESC;

#query 10
SELECT *
FROM employees
ORDER BY joining_date DESC;

#query 11
SELECT *
FROM employees
ORDER BY city;

#query 12
SELECT *
FROM employees
ORDER BY department,
salary DESC;

#query 13
SELECT *
FROM employees
ORDER BY gender,
first_name;

#query 14
SELECT department,
AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;

#query 15
SELECT city,
COUNT(*) AS total_employees
FROM employees
GROUP BY city
ORDER BY total_employees DESC;