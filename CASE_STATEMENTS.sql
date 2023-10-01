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
ORDER BY salary ASC 