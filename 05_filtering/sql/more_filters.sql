-- IN operator for list filtering
SELECT
	DISTINCT count(*)
FROM
	main.data_jobs
WHERE
	company_size IN ('M', 'S');

SELECT
	DISTINCT count(*)
FROM
	main.data_jobs
WHERE
	company_size NOT IN ('M', 'S');



-- FILTER clause
SELECT
	COUNT(*) AS total_jobs,
	COUNT(*) FILTER (
WHERE
	remote_ratio = 100) AS remote_jobs,
	ROUND(remote_jobs / total_jobs * 100,2) AS percentage_remote_jobs
FROM
	main.data_jobs ; 
	
-- OFFSET filtering - jumps over 6 top rows
SELECT * FROM main.data_jobs OFFSET 6;