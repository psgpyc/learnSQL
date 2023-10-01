SELECT * FROM sql_hr.offices;


-- SELECT state, COUNT(state) FROM sql_hr.offices
-- WHERE COUNT(state) > 1
-- GROUP BY state;

/*
Using WHERE with aggregrate functions is not permitted in mysql, so use HAVING CLAUSE	
*/

SELECT state, COUNT(state) FROM sql_hr.offices
GROUP BY state
HAVING COUNT(state) > 1;



-- FIND THE AVERAGE SALARY FOR EACH STATE AND USING HAVING TO FIND SALARIES ABOVE 75000

SELECT offices.state, AVG(employees.salary) AS average_salary
FROM  sql_hr.offices AS offices JOIN sql_hr.employees AS employees ON offices.office_id = employees.office_id
GROUP BY offices.state
HAVING AVG(employees.salary) > 75000
