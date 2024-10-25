desc salaries;

-- wildcard selection/ select all columns/ projection of all columns
SELECT
    *
FROM
    salaries;

-- select specified columns/ column projection/ selective query
SELECT
    work_year,
    job_title,
    salary_in_usd,
    company_location
FROM
    salaries;

-- selecting all columns except those specified in EXCLUDE
SELECT
    * EXCLUDE (salary, work_year)
FROM
    salaries;

-- check uniqueness of a column
SELECT DISTINCT
    salary_currency AS unique_currency
FROM
    salaries;

-- count number of unique occurences in a column, also giving aliasing clause AS
SELECT
    COUNT(DISTINCT salary_currency) AS number_currencies
FROM
    salaries;

-- alias can be given without the aliasing clause AS 
SELECT
    COUNT(DISTINCT salary_currency) number_currencies
FROM
    salaries;

