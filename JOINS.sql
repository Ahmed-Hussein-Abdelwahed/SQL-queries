select * from customer;

select * from product;

select * from sales;

/*JOINS: are used to retrieve data from multiple tables. It is performed whenever two or more tables are joined in a SQL
statement.*/

/* 
inner join ==> or somtimes called simple join
left outer join ==> left join
right outer join ==> right join
full outer join
cross join ==> cartisian join
*/

-- get columns names without any values

select *
from product
where false;

-- INNER JOIN ==> equal to A intercect B

-- two tables
select 
    a.customer_id,
    b.customer_name,
    a.product_id,
    a.sales,
    a.quantity,
    a.discount,
    a.profit
from sales as a
inner join customer as b
on a.customer_id = b.customer_id
order by a.customer_id;


-- left join ==> returns all rows from the left table, even if there are no matches in the right table.

SELECT
    a.order_id,
    a.product_id,
    a.quantity
from sales as a
left join product as b
on a.product_id = b.product_id
order by a.product_id;


-- right join ==> returns all rows from the right table, even if there are no matches in the left table.

SELECT
    a.order_line,
    a.product_id,
    a.customer_id,
    a.sales,
    b.customer_name,
    b.age
FROM sales AS a
RIGHT JOIN customer AS b
ON a.customer_id = b.customer_id
ORDER BY a.customer_id;


-- full outer join  ==> A union B

select 
    a.order_id,
    a.product_id,
    b.category,
    b.sub_category,
    b.product_name,
    a.quantity,
    a.sales,
    a.discount,
    a.profit
from sales as a
full join product as b
on a.product_id = b.product_id
order by a.order_id;


-- cross join ==> cartisian product for tables

select 
    a.customer_id,
    b.product_id
from customer as a
cross join product as b;

/* EXCEPT returns ==>
those tuples that are returned by the first SELECT operation, and not returned by the second SELECT operation.
This is the same as using a subtract operator in relational algebra.

To retain duplicates, we must explicitly write EXCEPTALL instead of EXCEPT.
*/

select product_id
from product
except
select customer_id
from sales;

/* UNION operator ==> 
is used to combine the result sets of 2 or more SELECT statements. It removes duplicate rows between
the various SELECT statements.*/

SELECT customer_id
FROM sales
UNION
SELECT customer_id
FROM customer
ORDER BY customer_id;
