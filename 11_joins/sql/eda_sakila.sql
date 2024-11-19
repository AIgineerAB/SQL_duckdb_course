-- we see many tables, let's investigate a few of them
DESC;

-- film table
SELECT * FROM main.film;

DESC TABLE main.film;

-- 1000 rows
SELECT
	COUNT(*) AS number_movies,
	COUNT(DISTINCT title) AS unique_number_movies -- if same then no duplicates 
FROM
	main.film;

-- note film_id 
SELECT * FROM main.film;

SELECT DISTINCT rating FROM main.film;



-- film_actor table - note actor_id and film_id
SELECT * FROM main.film_actor;

DESC TABLE main.film_actor;

-- note actor_id and names
SELECT * FROM main.actor;



