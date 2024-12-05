-- describes what exists in this database
DESC;

-- select all columns
SELECT
    *
FROM
    main.payment
LIMIT
    10;

SELECT
    customer_id,
    amount
FROM
    main.payment;

-- aggregate function COUNT -> many-to-one mapping 
SELECT
    COUNT(*) AS number_payments
FROM
    main.payment;

-- statistics on payments 
SELECT
    MIN(amount) AS min,
    ROUND(AVG(amount), 2) AS average,
    MEDIAN (amount) AS median,
    MAX(amount) AS max
FROM
    main.payment;

-- filter 
-- records with amounts over 4.2  
SELECT
    *
FROM
    main.payment
WHERE
    amount > 4.2;

SELECT
    CASE
        WHEN amount < 3.5 THEN 'low cost'
        WHEN amount < 7.5 THEN 'medium cost'
        ELSE 'high cost'
    END AS cost_level
FROM
    main.payment;

-- want to add this column into the results set 
SELECT
    *,
    CASE
        WHEN amount < 3.5 THEN 'low cost'
        WHEN amount < 7.5 THEN 'medium cost'
        ELSE 'high cost'
    END AS cost_level
FROM
    main.payment;

-- however this table is not mutated, so we could add a new column to it
-- 

SELECT * FROM main.payment;

