desc;

-- select all query	
-- the default namespace is main and data_jobs table is there
SELECT
	*
FROM
	data_jobs;

-- in general good practice to use namespaces to avoid name confusion
-- and to get better organization of tables

-- use fully qualified name
SELECT
	*
FROM
	salaries.main.data_jobs;

-- use schema namespace
SELECT
	*
FROM
	main.data_jobs;

-- limit clause to choose how many rows to be returned
SELECT
	*
FROM
	main.data_jobs 
LIMIT 5;


-- select specified columns/ column projection/ selective query
SELECT
	work_year,	
	job_title,
	salary_in_usd,
	company_location
FROM
	main.data_jobs;
	

-- selecting all columns except those specified in EXCLUDE
SELECT
	* EXCLUDE (salary,
	work_year)
FROM
	 main.data_jobs;

-- getting unique values in a column
SELECT DISTINCT employment_type FROM main.data_jobs;

SELECT DISTINCT experience_level FROM main.data_jobs;

SELECT experience_level FROM main.data_jobs;


