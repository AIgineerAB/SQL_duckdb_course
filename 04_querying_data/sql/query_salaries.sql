desc;

-- select all query	
SELECT
	*
FROM
	data_jobs;

-- select specified columns/ column projection/ selective query
SELECT
	work_year,	
	job_title,
	salary_in_usd,
	company_location
FROM
	data_jobs;
	

-- selecting all columns except those specified in EXCLUDE
SELECT
	* EXCLUDE (salary,
	work_year)
FROM
	data_jobs;




