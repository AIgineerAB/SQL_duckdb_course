SELECT * FROM main.cleaned_food;

-- 10 most searched foods
SELECT
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food
ORDER BY
	total_searches DESC
LIMIT 10;

-- total searches by year
-- not stranged that total number of searches increases per year
SELECT
	year,
	SUM(number_searches) total_searches
FROM
	main.cleaned_food
GROUP BY
	year
ORDER BY
	total_searches DESC;

-- check all years available
SELECT DISTINCT year FROM main.cleaned_food;


-- using HAVING clause to filter after group by
SELECT
	YEAR,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	YEAR
HAVING
	total_searches > 300000;



-- groups by two columns
SELECT
	YEAR,
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food,
	YEAR,
HAVING
	food = 'pizza';

