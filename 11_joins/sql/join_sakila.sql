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


-- if doing LEFT JOIN get all films including those without a category -> the category becomes NULL
-- INNER JOIN - get all films with associated category
SELECT
	f.title,
	c.name AS category,
FROM
	main.film_category fc
INNER JOIN main.category c ON
	fc.category_id = c.category_id
INNER JOIN main.film f ON
	f.film_id = fc.film_id ; 



SELECT
	COUNT(*)
FROM
	main.film f
INNER JOIN main.category c ON category_id ; 
	

-- in which address, city and country does the staff live?

-- address_id, first_name, last_name
SELECT * FROM main.staff;

-- address_id, address, city_id
SELECT * FROM main.address;

-- city_id, city, country_id
SELECT * FROM main.city c; 

-- country_id, country
SELECT * FROM main.country; 


-- lets do the joining, note that the order of join doesn't matter 
SELECT
	s.first_name,
	s.last_name,
	a.address,
	c.city,
	ctry.country
FROM
	main.staff s
LEFT JOIN main.address a ON
	s.address_id = a.address_id
LEFT JOIN main.city c ON
	c.city_id = a.city_id
LEFT JOIN main.country ctry ON
	ctry.country_id = c.country_id ; 


