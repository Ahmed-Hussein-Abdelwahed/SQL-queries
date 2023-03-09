-- CREATE USER statement creates a database account that allows you to log into the database

CREATE USER new_user
WITH PASSWORD '123456';


CREATE USER new_user1
WITH PASSWORD 'academy'
VALID UNTIL 'Jan 1,2020';


CREATE USER new_user2
WITH PASSWORD 'academy'
VALID UNTIL 'infinity';


/*

Privileges to tables can controlled using GRANT & REVOKE.
These permissions can be any combination of SELECT,
INSERT, UPDATE, DELETE, INDEX, CREATE, ALTER, DROP, GRANT OPTION or ALL.


Privilege           Description

SELECT              Ability to perform SELECT statements on the table.
INSERT              Ability to perform INSERT statements on the table.
UPDATE              Ability to perform UPDATE statements on the table.
DELETE              Ability to perform DELETE statements on the table.
TRUNCATE            Ability to perform TRUNCATE statements on the table.
REFERENCES          Ability to create foreign keys (requires privileges on both parent and child tables).
TRIGGER             Ability to create triggers on the table.
CREATE              Ability to perform CREATE TABLE statements.
ALL                 Grants all permissions.

*/


GRANT SELECT, INSERT, UPDATE, DELETE ON products TO starttech; -- products (table name)

GRANT ALL ON products TO starttech; -- starttech (user)

GRANT SELECT ON products TO PUBLIC; -- bublis ==> all prevlidges

REVOKE ALL ON products FROM starttech; -- revoke ==> remove all prevlidges from user (starttech)


-- DROP USER statement is used to remove a user from the database.

-- If the user that you wish to delete owns a database, be sure to drop the
-- database first and then drop the user.

DROP USER techonthenet;


-- ALTER USER statement is used to rename a user in the database

ALTER USER starttech
RENAME TO ST;


-- Run a query against pg_user table to retrieve information about Users

SELECT DISTINCT usename
FROM pg_stat_activity;

