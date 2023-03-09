-- length

select customer_name, length(customer_name), age from customer
where age = (select min(age) from customer)
order by customer_name;


-- upper
select upper('ahmed hussein');

select upper(customer_name) from customer
order by customer_name
limit 10;


-- lower

select lower(customer_name) from customer
order by customer_name
limit 5;

-- replace ==> (case sensitive)

select replace(customer_name,'Aaron', 'Baron') from customer
order by customer_name
limit 5;

-- TRIM function removes all specified characters either from the beginning or the end of a string

select trim('Aa' from customer_name) from customer
order by customer_name
limit 5;


-- RTRIM function removes all specified characters from the right hand side of a string


select rtrim('Berg', customer_name) from customer
order by customer_name
limit 5;


-- LTRIM function removes all specified characters from the left hand side of a string

select ltrim('rg', customer_name) from customer
order by customer_name
limit 5;


-- concat == by using ||

select customer_name || ' age = ' || age  from customer
order by customer_name
limit 5;

-- substring

select substring(customer_name for 3) from customer
order by customer_name
limit 5;


select substring(customer_name from 3 for length(customer_name)) from customer
order by customer_name
limit 10;


-- STRING_AGG concatenates input values into a string, separated by delimiter

select STRING_AGG(customer_name, ',') from customer
group by customer_name
order by customer_name
limit 10;

select
  country,
  string_agg(city, ' , ') as c_name
from customer
group by country
limit 4;

