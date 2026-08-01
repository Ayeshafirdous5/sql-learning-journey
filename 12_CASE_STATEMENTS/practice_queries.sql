#Query 1 – Basic CASE Statement
#Classify employees based on salary.
SELECT first_name,salary,
CASE
    WHEN salary < 50000 THEN 'Low Salary'
    WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium Salary'
    ELSE 'High Salary'
END AS salary_category
FROM employees;

#Query 2 – Department Category
SELECT first_name,department_id,
CASE
    WHEN department_id = 1 THEN 'Data Analytics'
    WHEN department_id = 2 THEN 'Sales'
    WHEN department_id = 3 THEN 'HR'
    WHEN department_id = 4 THEN 'Marketing'
    ELSE 'Finance'
END AS department_name
FROM employees;

#Query 3 – Salary Bonus
SELECT
first_name,
salary,
CASE
    WHEN salary >= 70000 THEN salary * 1.20
    WHEN salary >= 50000 THEN salary * 1.10
    ELSE salary * 1.05
END AS revised_salary
FROM employees;

#Query 4 – Employee Status
SELECT
first_name,
salary,
CASE
    WHEN salary >= 70000 THEN 'Senior Employee'
    WHEN salary >= 50000 THEN 'Mid Level Employee'
    ELSE 'Junior Employee'
END AS employee_status
FROM employees;

#Query 5 – Project Assignment Status
SELECT e.first_name,p.project_name,
CASE
    WHEN p.project_name IS NULL THEN 'No Project Assigned'
    ELSE 'Project Assigned'
END AS project_status
FROM employees e
LEFT JOIN employee_projects ep
ON e.employee_id = ep.employee_id
LEFT JOIN projects p
ON ep.project_id = p.project_id;

#Query 6 – Salary Grade
SELECT
first_name,
salary,
CASE
    WHEN salary >= 75000 THEN 'Grade A'
    WHEN salary >= 60000 THEN 'Grade B'
    WHEN salary >= 50000 THEN 'Grade C'
    ELSE 'Grade D'
END AS salary_grade
FROM employees;

#Query 7 – Department Label
SELECT
first_name,
department_id,
CASE
    WHEN department_id IN (1,2) THEN 'Business Department'
    ELSE 'Support Department'
END AS department_category
FROM employees;

#Query 8 – Complete CASE Statement Report
SELECT e.employee_id,e.first_name,d.department_name,e.salary,
CASE
    WHEN e.salary >= 70000 THEN 'High Salary'
    WHEN e.salary >= 50000 THEN 'Medium Salary'
    ELSE 'Low Salary'
END AS salary_category
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
ORDER BY e.salary DESC;