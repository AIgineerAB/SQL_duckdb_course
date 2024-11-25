-- lists all films and their category
WITH film_category_cte AS (
SELECT
	f.film_id,
	f.title AS film_title,
	c.name AS category_name
FROM
	main.film f
INNER JOIN main.film_category fc ON
	f.film_id = fc.film_id
INNER JOIN main.category c ON
	c.category_id = fc.category_id)
SELECT
	*
FROM
	film_category_cte
ORDER BY category_name, film_title
	;
	
-- find number films in each category
WITH film_count_cte AS (
SELECT
	c.name AS category_name,
	COUNT(f.film_id) AS film_count 
FROM
	main.category c
INNER JOIN main.film_category fc ON
	c.category_id = fc.category_id
INNER JOIN main.film f ON
	fc.film_id = f.film_id
GROUP BY c.name
)
SELECT
	*
FROM
	film_count_cte
ORDER BY film_count DESC;

