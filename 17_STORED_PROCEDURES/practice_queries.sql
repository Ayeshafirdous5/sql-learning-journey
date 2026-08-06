#Query 1 – Simple Stored Procedure
DELIMITER $$
CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT *
    FROM employees;
END $$
DELIMITER ;

CALL GetAllEmployees();

#Query 2 – High Salary Employees
DELIMITER $$
CREATE PROCEDURE HighSalaryEmployees()
BEGIN
    SELECT
        employee_id,
        first_name,
        salary
    FROM employees
    WHERE salary >= 60000;
END $$
DELIMITER ;

CALL HighSalaryEmployees();

#Query 3 – Employee with Department
DELIMITER $$
CREATE PROCEDURE EmployeeDepartmentDetails()
BEGIN
    SELECT
        e.employee_id,
        e.first_name,
        d.department_name,
        e.salary
    FROM employees e
    INNER JOIN departments d
        ON e.department_id = d.department_id;
END $$
DELIMITER ;

CALL EmployeeDepartmentDetails();

#Query 4 – Employee Projects
DELIMITER $$
CREATE PROCEDURE EmployeeProjectDetails()
BEGIN
    SELECT
        e.first_name,
        p.project_name
    FROM employees e
    INNER JOIN employee_projects ep
        ON e.employee_id = ep.employee_id
    INNER JOIN projects p
        ON ep.project_id = p.project_id;
END $$
DELIMITER ;

CALL EmployeeProjectDetails();

#Query 5 – Procedure with Parameter
DELIMITER $$
CREATE PROCEDURE EmployeeSalaryByID
(
    IN emp_id INT
)
BEGIN
    SELECT
        employee_id,
        first_name,
        salary
    FROM employees
    WHERE employee_id = emp_id;
END $$
DELIMITER ;

CALL EmployeeSalaryByID(101);

#Query 6 – Procedure with Aggregate Function
DELIMITER $$
CREATE PROCEDURE DepartmentSalarySummary()
BEGIN
    SELECT
        department_id,
        AVG(salary) AS average_salary,
        MAX(salary) AS highest_salary,
        MIN(salary) AS lowest_salary
    FROM employees
    GROUP BY department_id;
END $$
DELIMITER ;

CALL DepartmentSalarySummary();

#Query 7 – Final Stored Procedure
DELIMITER $$
CREATE PROCEDURE EmployeeReport()
BEGIN
    SELECT
        e.employee_id,
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
    ORDER BY e.salary DESC;
END $$
DELIMITER ;

CALL EmployeeReport();