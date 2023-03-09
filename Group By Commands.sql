SELECT * FROM CUSTOMER;

-- Group by

SELECT first_name, COUNT(age) FROM CUSTOMER
WHERE age >= 20 
GROUP BY first_name
ORDER BY first_name
LIMIT 5;

-- Having (= WHERE CLUASE BUT WITH AGGREGATE FUNCTIONS ONLY)

SELECT first_name, COUNT(first_name) AS "COUNT" FROM CUSTOMER
GROUP BY first_name
HAVING COUNT(first_name) > 1; 

