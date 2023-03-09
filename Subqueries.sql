/*
Subquery is a query within a query.
These subqueries can reside in the WHERE clause, the FROM clause, or the SELECT clause.*/

SELECT *
FROM customer
WHERE age = (
  SELECT MIN(age)
  FROM customer
);

SELECT *
FROM customer
WHERE age = (
  SELECT max(age)
  FROM customer
);

SELECT *
FROM customer
WHERE age <= (
  SELECT avg(age)
  FROM customer
);

