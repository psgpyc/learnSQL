-- GROUP THE ROWS BY office_id and return the count of it in the table and order them in descending order

SELECT office_id,COUNT(*) AS count_of_office_id 
FROM sql_hr.employees 
GROUP BY office_id 	
ORDER BY COUNT(*) DESC;


SELECT office_id, salary
FROM sql_hr.employees
ORDER BY office_id ASC, salary DESC;

-- Here, we want to first order by office_id in ASC order and then Salary in DESC order. 
-- SQL first orders the rows in ascending order based on office_id and groups them by office_id, and then salary in desc order. 
SELECT *
FROM sql_hr.employees
ORDER BY office_id ASC, salary DESC;

-- GROUP BY AND ORDER BY Together

SELECT office_id, AVG(salary) AS average_salary, MAX(salary) AS max_salary, MIN(salary) AS min_salary, (MAX(salary) -  MIN(salary)) AS salary_deviation
FROM sql_hr.employees
GROUP BY office_id
ORDER BY average_salary DESC;


