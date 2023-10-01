SELECT * FROM sql_hr.employees;

-- INNER JOINS

SELECT * FROM sql_hr.employees
INNER JOIN sql_hr.offices
ON sql_hr.employees.office_id = sql_hr.offices.office_id;

-- LEFT JOIN

SELECT * FROM sql_hr.employees
LEFT JOIN sql_hr.offices
ON  sql_hr.employees.office_id = sql_hr.offices.office_id;

-- RIGHT JOIN

SELECT * FROM sql_hr.employees
RIGHT JOIN sql_hr.offices
ON sql_hr.employees.office_id = sql_hr.offices.office_id;

-- SELECT ONLY REQUIRED COLUMN FROM THE JOIN 

SELECT sql_hr.employees.first_name, sql_hr.employees.last_name, sql_hr.employees.job_title,
	   sql_hr.offices.office_id, sql_hr.offices.address, sql_hr.offices.city, sql_hr.offices.state
FROM sql_hr.employees
JOIN sql_hr.offices
ON sql_hr.employees.office_id = sql_hr.offices.office_id;

-- JOIN WITH CONDITION

SELECT sql_hr.employees.first_name, sql_hr.employees.last_name, sql_hr.employees.job_title,
	   sql_hr.offices.office_id, sql_hr.offices.address, sql_hr.offices.city, sql_hr.offices.state
FROM sql_hr.employees
JOIN sql_hr.offices
ON sql_hr.employees.office_id = sql_hr.offices.office_id
WHERE sql_hr.offices.state IN ("NY" , "OH")
ORDER BY sql_hr.offices.office_id DESC;


-- GROUP BY WITH JOINS
SELECT sql_hr.offices.state, sql_hr.offices.city ,AVG(sql_hr.employees.salary) FROM sql_hr.offices JOIN sql_hr.employees
ON sql_hr.offices.office_id = sql_hr.employees.office_id
GROUP BY sql_hr.offices.state, sql_hr.offices.city
ORDER BY AVG(sql_hr.employees.salary) ASC

 