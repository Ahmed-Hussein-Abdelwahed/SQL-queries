-- count

SELECT * FROM CUSTOMER;

SELECT COUNT (*) AS "table length " FROM CUSTOMER; -- NUMBER OF ROWS IN CUSTOMER TABLE

SELECT COUNT (DISTINCT age) AS "Ages greater than or equal 20" FROM CUSTOMER
WHERE age >= 20;

-- sum

ALTER TABLE CUSTOMER
ADD dummy int DEFAULT 35;  -- SET ALL ROWS WITH THE SAME VALUE (35)

SELECT SUM(dummy) AS "Dummy sum" FROM CUSTOMER;

SELECT SUM(dummy) AS "Dummy sum with filtering" FROM CUSTOMER
WHERE age >= 30;


-- average

SELECT AVG(age) AS "customers age average" FROM CUSTOMER;

-- min & max

SELECT MIN(age) AS "Minimum age" FROM CUSTOMER;

SELECT MAX(age) AS "Maximum age" FROM CUSTOMER;
