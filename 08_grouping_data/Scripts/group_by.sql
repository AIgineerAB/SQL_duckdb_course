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


-- lets check pizza, and number of searches each year for it
SELECT
	year,
	food,
	number_searches
FROM
	main.cleaned_food
GROUP BY year
WHERE food = 'pizza';


