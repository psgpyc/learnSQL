-- SUBQUERY / INNER QUERY


/*
WE CAN USE SUB QUERY IN ANY PART OF THE QUERY.
WE CAN USE IN SELECT, INSERT, UPDATE, FROM , WHERE, DELETE .
*/



-- lets create a temp table to work with subquery
DROP TABLE IF EXISTS EMP_SALARY;
CREATE TEMPORARY TABLE EMP_SALARY (
	EmployeeId INT,
    JobTitle VARCHAR(100),
    Salary FLOAT
);
INSERT INTO EMP_SALARY
SELECT sql_hr.employees.employee_id, sql_hr.employees.job_title, sql_hr.employees.salary FROM sql_hr.employees;

SELECT * FROM EMP_SALARY;


-- SUBQUERY IN SELECT

SELECT EmployeeId, Salary, (SELECT AVG(SALARY) FROM EMP_SALARY) AS AverageSalary  FROM EMP_SALARY;
-- THIS GENERATES AN ERROR, AS WE CANNOT REFER TO TEMPORARY TABLE MORE THAN ONCE IN A SINGLE QUERY. 


-- USING SUBQUERY IN ORGINAL EMPLOYEE TABLE


SELECT employee_id, salary, (SELECT AVG(SALARY) FROM employees)  FROM employees;
-- ALTERNATE WAY 
SELECT employee_id, salary, AVG(salary) OVER () AS AverageSalary FROM employees;


-- SUBQUERY IN FROM STATEMENT
SELECT offices.office_id, offices.address FROM (SELECT * FROM sql_hr.offices) AS offices;

-- SUBQUERY IN WHERE STATEMENT
-- SELECT id, job titile and salary for employees living in state of "OH"
 
SELECT sql_hr.employees.employee_id, sql_hr.employees.job_title, sql_hr.employees.salary, sql_hr.employees.office_id FROM sql_hr.employees
WHERE sql_hr.employees.office_id IN (SELECT sql_hr.offices.office_id FROM sql_hr.offices WHERE state = "OH")









