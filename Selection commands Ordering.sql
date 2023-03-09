-- order by (sorting)

SELECT * FROM CUSTOMER ORDER BY age; -- ascinding ordering by default
 
SELECT * FROM CUSTOMER ORDER BY age ASC; -- ascinding ordering

SELECT * FROM CUSTOMER ORDER BY age DESC; -- descinding ordering

SELECT * FROM CUSTOMER ORDER BY age ASC, first_name DESC; -- multi level ordering

SELECT * FROM CUSTOMER ORDER BY 4 DESC; -- order by fourth column desc


-- limit output

SELECT * FROM CUSTOMER WHERE age > 20 ORDER BY age DESC LIMIT 5;


/* Alias (set meanigful name for output rather than ones in DB)
important when using complex exprission
important when using join */
SELECT customer_id AS "ID", first_name AS "Name", age, customer_email AS "Email" FROM CUSTOMER; 




