-- top paying customers 
WITH customer_payment AS
(
SELECT
	customer_id,
	SUM(amount) AS total_payment
FROM
	main.payment p
GROUP BY
	customer_id 
)
SELECT
	customer_id,
	total_payment
FROM
	customer_payment
WHERE
	total_payment > 150;


-- include name on customer -> join the customer table 
WITH customer_payment AS
(
SELECT
	customer_id,
	SUM(amount) AS total_payment
FROM
	main.payment
GROUP BY
	customer_id
HAVING
	total_payment > 150
)
SELECT
	cp.customer_id,
	c.first_name,
	c.last_name,
	total_payment,
FROM
	customer_payment cp
LEFT JOIN main.customer c ON
	cp.customer_id = c.customer_id
ORDER BY cp.total_payment DESC, c.last_name ASC;



-- lists all films and their category
-- here we place joining inside of CTE block
WITH film_category AS (
SELECT
	f.film_id,
	f.title AS film_title,
	c.name AS category_name
FROM
	main.film f
INNER JOIN main.film_category fc ON
	f.film_id = fc.film_id
INNER JOIN main.category c ON
	c.category_id = fc.category_id
)
SELECT
	*
FROM
	film_category
ORDER BY
	category_name,
	film_title
	;
	
-- find number films in each category
WITH film_count AS (
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
	film_count
ORDER BY film_count DESC;



