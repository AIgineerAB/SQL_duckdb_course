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

SELECT
	COUNT(final_price)
FROM
	hemnet
WHERE
	final_price IS NOT NULL;

SELECT
	COUNT(*)
FROM
	hemnet
WHERE
	sale_date LIKE '%2022-06%';
   

SELECT
	MIN(final_price) min, 
	AVG(final_price) average,
	MEDIAN(final_price) as median,
	MAX(final_price) as max
FROM
	hemnet;


SELECT COUNT(DISTINCT commune) FROM hemnet;


WITH total_homes AS (
SELECT
	COUNT(*) AS total_count
FROM
	hemnet),
over_10M AS (
SELECT
	COUNT(*) AS over_10M_count
FROM
	hemnet
WHERE
	final_price > 10000000)
SELECT 
	over_10M.over_10M_count,
	total_homes.total_count,
	(over_10M.over_10M_count / total_homes.total_count)* 100 AS "over_10M(%)"
FROM
	total_homes,
	over_10M;

	


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



DELETE FROM hemnet WHERE column00 = '1.0';





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

