SELECT
	COUNT(*)
FROM
	main.data_jobs
WHERE
	salary_in_usd < 50000 ;


-- find entry level jobs
SELECT
	*
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';

-- find median salary for entry level jobs
SELECT
	MEDIAN(salary_in_usd) AS median_salary_usd
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';

-- find median salary for mid level jobs
SELECT
	MEDIAN(salary_in_usd) AS median_salary_usd
FROM
	main.data_jobs
WHERE
	experience_level = 'MI';
	








