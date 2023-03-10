/*
pattern matching

1. like statemants
2. similar statemants
3. ~ regular expressions
*/

-- 1. like statements

/*
Wildcard        Explanation

%               Allows you to match any string of any length (including zero length)
_               Allows you to match on a single character
*/

select customer_name from customer
where customer_name like 'Aa%'
order by customer_name
limit 5;

select customer_name from customer
where customer_name like '%in_%'
order by customer_name
limit 10;


-- 2. similar to 

select 'abc' similar to 'abc'; 

select 'AHMED HUSSEIN' similar to 'ahmed hussein'; 


-- 3. regular expressions

/*
Wildcard            Explanation

|                   Denotes alternation (either of two alternatives).
*                   Denotes repetition of the previous item zero or more times
+                   Denotes repetition of the previous item one or more times.
?                   Denotes repetition of the previous item zero or one time.
{m}                 denotes repetition of the previous item exactly m times.
{m,}                denotes repetition of the previous item m or more times.
{m,n}               denotes repetition of the previous item at least    m and not more than n times
^,$                 ^ denotes start of the string, $ denotes end of the string
[chars]             a bracket expression , matching any one of the chars
~*                  ~ means case sensitive and ~* means case insensitive

*/



SELECT * FROM customer
WHERE customer_name ~* '^a+[a-z\s]+$';

SELECT * FROM customer
WHERE customer_name ~* '^(a|b|c|d)+[a-z\s]+$';

SELECT * FROM customer
WHERE customer_name ~* '^(a|b|c|d)[a-z]{3}\s[a-z]{4}$';

SELECT * FROM customer
WHERE customer_name ~* '[a-z0-9\.\-\_]+@[a-z0-9\-]+\.[a-z]{2,5}';

