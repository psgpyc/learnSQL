SELECT * FROM sql_hr.employees;


SELECT first_name, last_name, job_title, office_id ,COUNT(office_id) OVER (PARTITION BY office_id) AS count_of_office_id FROM sql_hr.employees;

-- USE Partition By in a join to get average salary by state and count of offices in each state

SELECT 
employees.first_name, 
employees.last_name, 
employees.job_title, 
offices.state ,AVG(employees.salary) OVER (PARTITION BY offices.state) AS avg_salary_by_state, 
COUNT(offices.state) OVER (PARTITION BY offices.state) AS office_cnt_by_state  
FROM sql_hr.offices AS offices JOIN sql_hr.employees AS employees ON sql_hr.offices.office_id = sql_hr.employees.office_id; 