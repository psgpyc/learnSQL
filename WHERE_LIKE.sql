SELECT * FROM sql_hr.employees;

SELECT * FROM sql_hr.employees WHERE employee_id > 33391;

SELECT * FROM sql_hr.employees WHERE office_id = 3 AND first_name = "Guthrey";

SELECT first_name, last_name , job_title, office_id FROM sql_hr.employees WHERE office_id = 2;

-- LIKE 

SELECT first_name FROM sql_hr.employees WHERE first_name LIKE "s%"; 
-- RETRIEVE first_name from the employees table if their first_name starts with the alphabet s. 

SELECT first_name FROM sql_hr.employees WHERE first_name LIKE "s%r"; 
-- Starts with alphabet (s) and ends with alphabet (r) 

SELECT first_name FROM sql_hr.employees WHERE first_name LIKE "%S%A"
-- has alphabet S in middle and ends with alphabet a


