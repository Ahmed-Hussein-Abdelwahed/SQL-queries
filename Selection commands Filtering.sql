INSERT INTO CUSTOMER VALUES 
(9, 'Abas', 'Hany', 25, 'abscf@hotmail.com'),
(13, 'Helal', 'khamis', 10, 'abb@gmail.com'),
(66, 'Galal', 'Mohamed', 25, 'abscf@yahoo.com'),
(74, 'Anwar', 'adel', 21, 'abop@gmail.com'),
(36, 'Metwaly', 'hamam', 36, 'abiu@fcai.com'),
(25, 'Galal', 'hendy', 11, 'abfg@gmail.com'),
(20, 'Ahmed', 'Hamed', 55, 'abrt@hotmail.com');

INSERT INTO CUSTOMER VALUES 
(17, 'Abas', 'Hany%', 45, 'abscf@hotmail.com');

/* IN*/
SELECT * FROM CUSTOMER
WHERE first_name IN ('Ahmed', 'Galal', 'Abas');


/* BETWEEN */

SELECT * FROM CUSTOMER
WHERE age BETWEEN 20 AND 40;


/* LIKE */

SELECT * FROM CUSTOMER
WHERE first_name LIKE 'A%';

SELECT * FROM CUSTOMER
WHERE first_name LIKE '__l%';

SELECT * FROM CUSTOMER
WHERE last_name LIKE '%\%'; /* IF YOU SEARCH FOR % SIGN YOU MUST PUT \ BEFORE IT */

select * from CUSTOMER;