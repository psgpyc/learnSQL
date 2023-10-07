USE sql_hr;

CREATE TABLE EmployeeErrors (
	EmployeeId VARCHAR(100),
    FirstName  VARCHAR(100),
    LastName   VARCHAR(100)
);

INSERT INTO EmployeeErrors Values
	('1001', 'Tinku', 'Pinku'),
    ('  1002', 'Sano', 'Chinku'),
    ('1005', 'T0by', 'Flenderson - Fired');

SELECT * FROM EmployeeErrors;

-- USING TRIM ,LTRIM, RTRIM

-- TRIM GETS RID OF LEADING AND TRAILING BLANK SPACES FROM TEXT.


SELECT EmployeeId, TRIM(EmployeeId) FROM sql_hr.EmployeeErrors;   

-- LTRIM GETS RID OF LEADING BLANK SPACES  
SELECT EmployeeId, LTRIM(EmployeeId) FROM sql_hr.EmployeeErrors;   

-- RTRIM GETS RID OF TRAILING BLANK SPACES  
SELECT EmployeeId, RTRIM(EmployeeId) FROM sql_hr.EmployeeErrors;   

-- REPLACE

SELECT LastName, REPLACE(LastName, '- Fired', '' ) as LastNameFIxed FROM EmployeeErrors;

-- Using Substring

SELECT SUBSTRING(first_name, 1, 3) FROM Employees; 

-- Fuzzy Matching with Joins

CREATE TABLE FuzzEmp(
	FirstName VARCHAR(100),
    LastName VARCHAR(100)
);

INSERT INTO FuzzEmp Values
("D'a", "hhaaaa"),
("Yov", "hhaaaa"),
("Say", "hhaaaa"),
("Ala", "hhaaaa");


SELECT * FROM FuzzEmp;

SELECT emp.first_name, femp.FirstName FROM employees AS emp JOIN FuzzEmp as femp ON SUBSTRING(emp.first_name, 1,3) = femp.FirstName;

-- UPPER and LOWER

SELECT first_name, UPPER(first_name) AS upper_case, LOWER(first_name) AS lower_case FROM employees; 



