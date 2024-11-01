-- select unique values of a column and give it an alias
-- alias only exists during the query
SELECT
	DISTINCT salary_currency AS unique_currency
FROM
	data_jobs;


-- count number of unique occurences in a column, also giving aliasing clause AS
SELECT
	COUNT(DISTINCT salary_currency) AS number_currencies
FROM
	data_jobs;
	

-- alias without AS command
-- which approach do you think is most readable?
SELECT
	COUNT(DISTINCT salary_currency) number_currencies
FROM
	data_jobs;


