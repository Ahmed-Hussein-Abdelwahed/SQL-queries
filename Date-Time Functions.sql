-- CURRENT_DATE function returns the current date.

select current_date;

-- CURRENT_TIME function returns the current time with the time zone.

select current_time;


-- CURRENT_TIMESTAMP function returns the current date and time with the time zone.

select current_timestamp;


-- AGE function returns the number of years, months, and days between two dates.
-- age( [date1,] date2 )
-- If date1 is NOT provided, current date will be used

select AGE('2022-07-25', '1999-08-03') as dates;


/*
EXTRACT function extracts parts from a date

unit        explination 

day         Day of the month (1 to 31)
decade      Year divided by 10
doy         Day of the year (1=first day of year, 365/366=last day of the year,
            depending if it is a leap year)
epoch       Number of seconds since '1970 01 01 00:00:00 UTC', if date value.
            Number of seconds in an interval, if interval value
hour        Hour (0 to 23)
minute      Minute (0 to 59)
month       Number for the month (1 to 12), if date value. Number of months 
            (0 to 11), if interval value
second      Seconds (and fractional seconds)
year        Year as 4 digits
*/


SELECT EXTRACT(day from date '2014-04-25');
SELECT EXTRACT(day from date '2014-04-25 08:44:21');
               
SELECT EXTRACT(minute from time '08:44:21');
               
SELECT order_line , EXTRACT(EPOCH FROM age(ship_date,order_date)) FROM sales;


