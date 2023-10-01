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