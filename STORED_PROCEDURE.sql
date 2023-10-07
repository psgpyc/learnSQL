USE sql_hr;
-- STORED PROCEDURES

-- A SAMPLE
DELIMITER $$
CREATE PROCEDURE TEST() 
BEGIN 
	SELECT * FROM sql_hr.employees;  
END $$
DELIMITER ;

CALL TEST();

-- END OF SAMPLE


-- USING STORED PROCEDURES WITH TEMP TABLES
DELIMITER $$
DROP PROCEDURE IF EXISTS EMP_BY_STATE;
CREATE PROCEDURE EMP_BY_STATE(IN current_state VARCHAR(100))
BEGIN
	DROP TEMPORARY TABLE IF EXISTS employee_by_states;
	CREATE TEMPORARY TABLE employee_by_states (
	state varchar(100),
	avg_salary float,
	count_of_office int,
	count_of_job_title int
	);
	INSERT INTO employee_by_states
	SELECT offices.state, AVG(employees.salary), COUNT(offices.office_id), COUNT(employees.job_title) FROM sql_hr.employees AS employees JOIN sql_hr.offices AS offices 
	ON sql_hr.employees.office_id = sql_hr.offices.office_id
	GROUP BY sql_hr.offices.state;
	SELECT * FROM employee_by_states where state = current_state;
END $$
DELIMITER ;

CALL EMP_BY_STATE("OH");



DELIMITER $$
DROP PROCEDURE IF EXISTS GET_CUSTOMER;
CREATE PROCEDURE GET_CUSTOMER(IN fname VARCHAR(50), )
BEGIN
	SELECT * FROM employees WHERE first_name = fname;

END $$
DELIMITER ;

CALL GET_CUSTOMER("Sayer");




