SELECT * FROM sql_hr.employees;

-- SYNTAX 
/*
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;
*/ 

-- EXAMPLE

SELECT first_name, last_name, salary,
CASE	
	WHEN salary > 70000 THEN "High Tax"
    WHEN salary BETWEEN 40000 AND 70000 THEN "Medium Tax"
    ELSE "Low Tax"
END AS Salary_bracket
FROM sql_hr.employees
WHERE salary IS NOT NULL
ORDER BY salary ASC ;

-- CASE STATEMENT WITH JOINS

-- GIVE 20% RAISE TO EMPLOYEES WORKING ONLY IN OH STATE  AND 10% TO THE THE REST

SELECT sql_hr.employees.employee_id, sql_hr.employees.first_name, sql_hr.employees.last_name, sql_hr.offices.state,sql_hr.employees.salary ,
CASE
	WHEN sql_hr.offices.state = "OH" THEN sql_hr.employees.salary + (sql_hr.employees.salary * 0.20)
    ELSE sql_hr.employees.salary + (sql_hr.employees.salary * 0.10)
END AS salary_after_raise
FROM sql_hr.employees
JOIN sql_hr.offices
ON sql_hr.employees.office_id = sql_hr.offices.office_id
ORDER BY salary DESC