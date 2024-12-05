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
    ROUND(AVG(amount)) AS average,
    MEDIAN (amount) AS median,
    MAX(amount) AS max
FROM
    main.payment;