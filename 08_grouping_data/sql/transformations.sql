-- based on what we find in eda we transform the dataset

-- change name of id into food

-- remove google topic column

-- change value into number_of_searches

SELECT  * FROM main.food f ;

CREATE TABLE IF NOT EXISTS cleaned_food AS (
SELECT
	id as food,
	week_id AS week,
	SUBSTRING(week, 1,4) AS year, 
	value AS number_searches
FROM
	main.food);
	


SELECT  * FROM main.cleaned_food f ;
