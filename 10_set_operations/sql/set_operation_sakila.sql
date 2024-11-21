-- selects all customers and all actors which first names starts with A  
SELECT
	'Customer' AS type,
	c.first_name, 
	c.last_name
FROM
	main.customer AS c
WHERE
	c.first_name LIKE 'A%'
UNION 
SELECT 
	'Actor',
	a.first_name,
	a.last_name
FROM 
	main.actor AS a
WHERE 
	a.first_name LIKE 'A%'
;

-- find all overlapping names between actors and customers
SELECT
	a.first_name,
	a.last_name
FROM
	main.actor AS a
INTERSECT 
SELECT
	c.first_name,
	c.last_name
FROM
	main.customer AS c;
	
-- finds all with intials JD and record its type (actor, customer)
SELECT
	'actor' AS type,
	a.first_name,
	a.last_name
FROM
	main.actor AS a
WHERE a.first_name LIKE 'J%' AND a.last_name LIKE 'D%'
UNION ALL
SELECT
	'customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer AS c
WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%';