CREATE TABLE
    IF NOT EXISTS hemnet AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/hemnet_data_clean.csv')
    );

-- block 2
DESC;

--block 3
SELECT
    *
FROM
    hemnet;

SELECT
    COUNT(*)
FROM
    hemnet;