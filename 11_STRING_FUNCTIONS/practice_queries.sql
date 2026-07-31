#Query 1 – LENGTH()
SELECT
first_name,
LENGTH(first_name) AS name_length
FROM employees;

#Query 2 – UPPER() & LOWER()
SELECT
first_name,
UPPER(first_name) AS uppercase_name,
LOWER(first_name) AS lowercase_name
FROM employees;

#Query 3 – TRIM(), LTRIM(), RTRIM()
SELECT
TRIM('     Ayesha     ') AS trim_name,
LTRIM('     Ayesha') AS left_trim,
RTRIM('Ayesha     ') AS right_trim;

#Query 4 – LEFT() & RIGHT()
SELECT
first_name,
LEFT(first_name,3) AS first_three_letters,
RIGHT(first_name,2) AS last_two_letters
FROM employees;

#Query 5 – SUBSTRING()
SELECT
first_name,
SUBSTRING(first_name,2,3) AS substring_name
FROM employees;

#Query 6 – REPLACE()
SELECT
first_name,
REPLACE(first_name,'a','@') AS replaced_name
FROM employees;

#Query 7 – LOCATE()
SELECT
first_name,
LOCATE('a',first_name) AS position_of_a
FROM employees;

#Query 8 – CONCAT()
SELECT
first_name,
last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employees;

#Query 9 – Combined String Functions
SELECT
employee_id,
CONCAT(UPPER(LEFT(first_name,1)),
LOWER(SUBSTRING(first_name,2))) AS formatted_name,
LENGTH(first_name) AS total_letters,
department_id
FROM employees
ORDER BY total_letters DESC;