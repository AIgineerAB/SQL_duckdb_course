-- sorting by salary_in_usd ascending
SELECT
	*
FROM
	main.data_jobs
ORDER BY
	salary_in_usd ;


-- sorting by salary_in_usd descending
SELECT
	*
FROM
	main.data_jobs
ORDER BY
	salary_in_usd 
DESC;

-- sorting by (salary_in_usd, employee_residence) descending
-- if the salary is same then it will sort on residence alphabetically
SELECT
	*
FROM
	main.data_jobs
ORDER BY
	salary_in_usd DESC,
	employee_residence ASC;



	
