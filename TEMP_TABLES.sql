SELECT * FROM sql_hr.employees;

CREATE TEMPORARY TABLE temp_employee (
EmployeeId INT, 
JobTitle VARCHAR(100),
Salary INT);

INSERT INTO temp_employee VALUES(
1001, 'Data Analyst', 55000
);

SELECT * FROM temp_employee;

-- SELECTING DATA FROM ANOTHER TABLE AND INSERTING INTO TEMP TABLE

INSERT INTO temp_employee 
SELECT * FROM sql_hr.employees; 


/*
We get the follwing error
Error Code: 1136. Column count doesn't match value count at row 1
*/

-- Lets just try selecting the columns we have on temp tables
INSERT INTO temp_employee 
SELECT employee_id, job_title, salary FROM sql_hr.employees; 

SELECT * FROM temp_employee;

-- IT WORKS 
 
-- CREATE A TEMP TABLE TO STORE AVERAGE SALARY, COUNT OF OFFICE, COUNT OF JOB TITLE BY STATE

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

SELECT * FROM employee_by_states






