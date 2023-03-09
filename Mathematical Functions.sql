-- ceil

select 
    order_line,
    sales,
    ceil(sales) as total
from sales
where discount > 0
order by sales desc
limit 10;


-- floor

select 
    order_line,
    sales,
    floor(sales) as "total without discount"
from sales
where profit > 0
order by sales
limit 10;

-- RANDOM function can be used to return a random number between 0 and 1

-- Random decimal between a range (a included and b excluded)

SELECT RANDOM() * (100-50) + 50;

-- Random Integer between a range (both boundaries included)

SELECT FLOOR(RANDOM()*(100-50+1))+50;


/*
If we set the seed by calling the setseed function,
then the random function will return a repeatable sequence of
random numbers that is derived from the seed.

SETSEED ( seed )
Seed can have a value between 1.0 and
1.0, inclusive.
*/

SELECT SETSEED(0.5);
SELECT RANDOM(); -- each time when you execute this prdicit you will ge the same random number


-- ROUND function returns a number rounded to a certain number of decimal places

select 
    order_id,
    round(sales) as total
from sales
order by sales 
limit 5;


-- POWER function returns m raised to the nth power

SELECT POWER(6, 2);

select 
    order_id,
    power(discount, 2) as "squared discount"
from sales
where profit > 1000
order by profit desc
limit 10;
