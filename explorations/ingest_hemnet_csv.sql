-- ingest data from csv
CREATE TABLE
    IF NOT EXISTS hemnet AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/hemnet_data_clean.csv')
    );

-- describe
DESC;

-- select star
SELECT
    *
FROM
    hemnet;

-- count and alias 
SELECT
    COUNT(*) as total_rows
FROM
    hemnet;

SELECT
    *
FROM
    hemnet
LIMIT
    1;

DESC TABLE hemnet;

-- information_schema
SELECT
    column_name,
    data_type,
    is_nullable
FROM
    information_schema.columns
WHERE
    table_name = 'hemnet';

-- CTE 
WITH
    price_difference AS (
        SELECT
            address,
            commune,
            rooms,
            final_price - asked_price as price_diff
        FROM
            hemnet
    )
SELECT
    COUNT(
        CASE
            WHEN price_diff > 0 THEN 1
        END
    ) AS number_positive,
    COUNT(
        CASE
            WHEN price_diff < 0 THEN 1
        END
    ) AS number_negative,
    COUNT(
        CASE
            WHEN price_diff = 0 THEN 1
        END
    ) AS number_zero
FROM
    price_difference;

