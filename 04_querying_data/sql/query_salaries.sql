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

-- select unique values of a column
SELECT
	DISTINCT
    salary_currency AS unique_currency
FROM
	data_jobs;
	

-- count number of unique occurences in a column, also giving aliasing clause AS
SELECT
	COUNT(DISTINCT salary_currency) AS number_currencies
FROM
	job_salaries;


