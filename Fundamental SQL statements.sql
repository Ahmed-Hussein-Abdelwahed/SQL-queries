CREATE TABLE CUSTOMER(
    customer_id int NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    age int NOT NULL,
    email varchar(30) NOT NULL
); 

/*
if you don not specify null or not null, it will be null by default
*/


INSERT INTO CUSTOMER (customer_id, first_name, last_name, age, email) VALUES
(1, 'Ahmed', 'Hussein', 22, 'ahmed@gmail.com'),
(2, 'Maged', 'Hussein', 35, 'maged@yahoo.com');

/*
if you will ignore column (with null values), you must mention columns names inside parentses
*/

COPY CUSTOMER FROM 'E:\cources\sql masterclass\[FreeAllCourse.Com] Udemy - SQL Masterclass SQL for Data Analytics\4. Fundamental SQL statements\5.2 copy.csv' DELIMITER ',' CSV HEADER;

COPY CUSTOMER FROM 'E:\cources\sql masterclass\[FreeAllCourse.Com] Udemy - SQL Masterclass SQL for Data Analytics\4. Fundamental SQL statements\5.1 copytext.txt' DELIMITER ',';

/*
import data from other files (will be inseted in the table you specify)
HEADER: work with csv files, if it is text files you must remove headers from the file first.
*/


SELECT DISTINCT first_name FROM CUSTOMER; /* unique values*/

SELECT * FROM CUSTOMER
WHERE age = 35;

SELECT * FROM CUSTOMER
WHERE age > 20 AND age <= 35 ;

SELECT * FROM CUSTOMER
WHERE age > 20 OR age > 30;

SELECT * FROM CUSTOMER
WHERE NOT age = 35;

UPDATE CUSTOMER SET
first_name = 'Galal', age = 22
WHERE first_name = 'Maged';

select * from CUSTOMER;

DELETE FROM CUSTOMER
WHERE customer_id = 6;

select * from CUSTOMER;


/* add/ drop column */
ALTER TABLE CUSTOMER
ADD test varchar;

ALTER TABLE CUSTOMER
DROP test;

select * from CUSTOMER;


/* modify / rename column*/
ALTER TABLE CUSTOMER
ALTER COLUMN email TYPE varchar(25);

ALTER TABLE CUSTOMER
RENAME COLUMN email TO customer_email;

select * from CUSTOMER;

/* add / drop constraint */

ALTER TABLE CUSTOMER
ADD CONSTRAINT age
CHECK (age > 0); 


ALTER TABLE CUSTOMER
ADD PRIMARY KEY (customer_id);

/*
ALTER TABLE CUSTOMER
ADD CONSTRAINT child_column ”
FOREIGN KEY (customer_email) REFERENCES “parent table”;*/



