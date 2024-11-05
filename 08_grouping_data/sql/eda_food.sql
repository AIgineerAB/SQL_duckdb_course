-- EDA - exploratory data analysis
-- usually we do EDA to understand the dataset first

SELECT * FROM main.food;

SELECT DISTINCT id FROM main.food; 


SELECT
	COUNT(DISTINCT id) AS unique_foods
FROM
	main.food; 

SELECT COUNT(*) AS number_rows FROM main.food; 

DESC main.food;

-- filter on week_id
SELECT
	*
FROM
	main.food
WHERE
	week_id BETWEEN '2004-04' AND '2004-06';
	