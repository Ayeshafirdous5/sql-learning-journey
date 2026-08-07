#Query 1 – Create an Audit Table
CREATE TABLE employee_audit
(
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    first_name VARCHAR(50),
    action_type VARCHAR(50),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

#Query 2 – Create a Trigger
DELIMITER $$
CREATE TRIGGER employee_insert_trigger
AFTER INSERT
ON employees
FOR EACH ROW
BEGIN
INSERT INTO employee_audit
(employee_id,first_name,action_type)
VALUES
(NEW.employee_id,NEW.first_name,'Employee Added');
END $$
DELIMITER ;

#Query 3 – Test the Trigger
INSERT INTO employees
(employee_id,first_name,last_name,gender,department_id,salary)
VALUES
(111,'Ali','Khan','Male',1,65000);

#Query 4 – Check Audit Table
SELECT *
FROM employee_audit;

#Query 5 – Create an Event
DELIMITER $$
CREATE EVENT remove_low_salary_employees
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
DELETE
FROM employees
WHERE salary < 30000;
END $$
DELIMITER ;

#Query 6 – Show Events
SHOW EVENTS;

#Query 7 – Check Event Scheduler
SHOW VARIABLES LIKE 'event_scheduler';

#Query 8 – Final Project Query
SELECT employee_id,first_name,salary,department_id
FROM employees
ORDER BY employee_id;