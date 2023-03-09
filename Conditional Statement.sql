-- Case When

SELECT *,
    CASE
        WHEN age < 20 THEN 'YOUNG'
        WHEN age > 50 THEN 'OLD'
        ELSE 'MIDDLE'
    END AS age_category
FROM CUSTOMER;
  