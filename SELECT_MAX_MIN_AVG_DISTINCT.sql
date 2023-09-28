SELECT * FROM avacado_pricing.avocado LIMIT 5;

SELECT COUNT(*) AS COUNT_OF_ALL_ROWS FROM  avacado_pricing.avocado;

SELECT MAX(AveragePrice) AS MaxPrice FROM avacado_pricing.avocado;

SELECT MIN(AveragePrice) AS MinPrice FROM avacado_pricing.avocado;

SELECT AVG(AveragePrice) AS Avgprice FROM avacado_pricing.avocado;

SELECT DISTINCT(YEAR) AS YearsInData FROM avacado_pricing.avocado;

