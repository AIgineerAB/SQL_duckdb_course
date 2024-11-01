CREATE TABLE
    IF NOT EXISTS data_jobs AS (
SELECT
	*
FROM
	read_csv_auto('../data/salaries.csv'));
