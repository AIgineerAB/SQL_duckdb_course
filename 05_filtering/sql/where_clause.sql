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



-- computations 200k-500k SEK per month 
SELECT
	job_title,
	experience_level,
	(10.68 * salary_in_usd)/ 12 AS salary_sek_month
FROM
	main.data_jobs
WHERE
	(salary_sek_month>200000)
	AND (salary_sek_month < 500000)
ORDER BY
	salary_sek_month DESC;
	
-- same but using BETWEEN ... AND statement
SELECT
	job_title,
	experience_level,
	(10.68 * salary_in_usd)/ 12 AS salary_sek_month
FROM
	main.data_jobs
WHERE
	salary_sek_month BETWEEN 200000 AND 500000
ORDER BY
	salary_sek_month DESC;