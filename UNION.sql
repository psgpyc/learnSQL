SELECT * FROM sql_hr.employees_agency
UNION
SELECT * FROM sql_hr.employees;
-- UNION REMOVES THE DUPLICATE	

-- WE CAN USE UNION ALL TO GET ALL THE ROWS FROM BOTH THE TABLES

SELECT * FROM sql_hr.employees_agency
UNION ALL
SELECT * FROM sql_hr.employees
ORDER BY employee_id;

-- WE CAN SEE (Keriann Alloisi) TWICE  
  
