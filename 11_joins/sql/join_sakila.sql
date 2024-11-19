-- can we get which actors played which films?

SELECT * FROM main.film;
SELECT * FROM main.film_actor;
SELECT * FROM main.actor;


-- which actor has played which film_id
SELECT
	a.actor_id,
	a.first_name,
	a.last_name,
	fa.film_id 
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON
	fa.actor_id = a.actor_id; 

-- which actor has played which film?
-- joining 3 tables
SELECT
	a.first_name,
	a.last_name,
	f.title
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON
	fa.actor_id = a.actor_id
LEFT JOIN main.film f ON
	f.film_id = fa.film_id ; 