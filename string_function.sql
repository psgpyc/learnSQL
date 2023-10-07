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

SELECT SUBSTRING(FirstName, 3, 3) FROM Employeeerrors; 

-- Fuzzy Matching with Joins

CREATE TABLE FuzzEmp(
	FirstName VARCHAR(100),
    LastName VARCHAR(100),
);


