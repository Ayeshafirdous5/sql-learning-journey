SELECT *
FROM employees;

#query 1
SELECT *
FROM employees
WHERE gender = 'Female'
;

#query 2
SELECT *
FROM employees
WHERE salary > 50000
;

#query 3
SELECT *
FROM employees
WHERE salary >= 55000
;

#query 4
SELECT *
FROM employees
WHERE city = 'Hyderabad'
;

#query 5
SELECT *
FROM employees
WHERE joining_date > '2022-01-01'
;

#query 6
SELECT *
FROM employees
WHERE gender = 'Female'
AND city = 'Hyderabad'
;

#query 7
SELECT  *
FROM employees
WHERE department = 'IT'
OR department = 'Finance'
;

#query 8
SELECT *
FROM employees
WHERE NOT salary = 55000
;

#query 9
SELECT *
FROM employees
WHERE first_name LIKE 'a%'
;

#query 10
SELECT *
FROM employees
WHERE last_name LIKE '%a'
;

#query 11
SELECT *
FROM employees
WHERE first_name LIKE '%ha%'
;


#query 12
SELECT *
FROM employees
WHERE first_name LIKE '_____'
;

#query 13
SELECT *
FROM employees
WHERE gender = 'Female'
AND salary > 45000
AND city = 'hyderabad'
;

#query 14
SELECT *
FROM employees
WHERE department = 'marketing'
OR salary > 70000
;
