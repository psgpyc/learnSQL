SELECT * FROM sql_hr.employees;

-- Get me first_name, last_name and office_id of the employees from the table who are working in office_id 2 or 3  

SELECT first_name, last_name, office_id FROM sql_hr.employees WHERE office_id = 2 OR office_id = 3;

-- Instead of writing multiple OR operators we can use IN for that

SELECT first_name, last_name, office_id FROM sql_hr.employees WHERE office_id IN (2,3);
 