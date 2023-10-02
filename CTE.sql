-- CTE - COMMON TABLE EXPRESSION 




WITH CTE_employee as (
SELECT 
employees.first_name, 
employees.last_name, 
employees.job_title, 
offices.state AS office_state ,AVG(employees.salary) OVER (PARTITION BY offices.state) AS avg_salary_by_state, 
COUNT(offices.state) OVER (PARTITION BY offices.state) AS office_cnt_by_state  
FROM sql_hr.offices AS offices JOIN sql_hr.employees AS employees ON sql_hr.offices.office_id = sql_hr.employees.office_id)
SELECT office_state,avg_salary_by_state from CTE_employee;

-- CTE are not saved anywhere. So, each time you would like to access the select statement , you need to run it along with the CTE 