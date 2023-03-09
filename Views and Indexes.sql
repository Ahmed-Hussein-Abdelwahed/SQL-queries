--VIEW is not a physical table, it is a virtual table created by a query joining one or more tables.

CREATE VIEW dummy_table AS
SELECT
    a.order_line,
    a.order_id,
    b.customer_name,
    b.city,
    b.state_name,
    b.country
FROM sales AS a
LEFT JOIN customer as b
ON a.customer_id = b.customer_id
ORDER BY a.order_line;

/*
An index is a performance
tuning method of allowing faster retrieval of records. An index creates an entry for each
value that appears in the indexed columns.

1. Build index on columns of integer type
2. Keep index as narrow as possible
3. Column order is important
4. Make sure the column you are building an index for is declared NOT NULL
5. Build an index only when necessary

The following guidelines indicate when the use of an index should be
reconsidered.
• Indexes should not be used on small tables.
• Tables that have frequent, large batch updates or insert operations.
• Indexes should not be used on columns that contain a high number of NULL
values.
• Columns that are frequently manipulated should not be indexed.
*/

