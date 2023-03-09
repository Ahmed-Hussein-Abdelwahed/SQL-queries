/*
TO_CHAR function converts a number or date to a string

Parameter           Explanation

9                   Value (with no leading zeros)
0                   Value (with leading zeros)
.                   Decimal
,                   Group separator
PR                  Negative value in angle brackets
S                   Sign
L                   Currency symbol
MI                  Minus sign (for negative numbers)
PL                  Plus sign (for positive numbers)
SG                  Plus/minus sign (for positive and negative numbers)
EEEE                Scientific notation
*/


SELECT sales, TO_CHAR(sales, '9999.99') as converted_sales FROM sales;

SELECT sales, TO_CHAR(sales, 'L9,999.99') as currency_symbol FROM sales;

SELECT order_date , TO_CHAR(order_date,'MMDDYY') as MMDDYY_date FROM sales;

SELECT order_date , TO_CHAR(order_date, 'Month DD,YYYY') as "MonthDD,YYYY" FROM sales;


/*
TO_DATE function converts a string to a date.


Parameter           Explanation

YYYY                4 digit year
MM                  Month (01-12; JAN = 01).
Mon                 Abbreviated name of month capitalized
Month               Name of month capitalized, padded with blanks to length of 9 characters
DAY                 Name of day in all uppercase, padded with blanks to length of 9 characters
Day                 Name of day capitalized, padded with blanks to length of 9 characters
DDD                 Day of year (1-366)
DD                  Day of month (01-31)
HH                  Hour of day (01-12)
HH12                Hour of day (01-12)
HH24                Hour of day (00-23)
MI                  Minute (00-59)
SS                  Second (00-59)
am, AM, pm,or PM    Meridian indicator
*/

SELECT TO_DATE('2014/04/25', 'YYYY/MM/DD');

SELECT TO_DATE('033114', 'MMDDYY');


-- TO_NUMBER function converts a string to a number

SELECT TO_NUMBER ('1210.73', '9999.99');

SELECT TO_NUMBER ('$1,210.73', 'L9,999.99');
