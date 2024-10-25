CREATE TABLE
    IF NOT EXISTS job_salaries AS (
SELECT
	*
FROM
	read_csv_auto('../data/salaries.csv'));
