-- generates sequence of numbers from 1 to 100
SELECT
	UNNEST (generate_series(1,
	100)) AS id;

-- exclusive stop value in range function
SELECT
	UNNEST (range(1,
	101)) AS id;


-- create students synthetic data
SELECT
	UNNEST (generate_series(1,
	100)) AS id,
	'student_' || id AS student,
	-- concatenation
	ROUND(RANDOM()* 100) AS score;

-- make this synthetic data more complex with grades
-- use subquery

SELECT
	id,
	'student_' || id AS student,
	score,
	CASE 
		WHEN score < 50 THEN 'F'
		WHEN score < 75 THEN 'G'
		ELSE 'VG'
	END AS grade
FROM 
	(
	-- subquery
	SELECT
		UNNEST (generate_series(1,
		100)) AS id,
		-- concatenation
		ROUND(RANDOM()* 100) AS score);


	
-- synthetic sales data
SELECT
	'customer_' || order_id AS customer_name,
	DATE '2024-01-01' + (order_id-1) * INTERVAL '1 day' AS order_date,
	ROUND(RANDOM() * 1000,
	2) AS order_amount,
	CASE
		WHEN RANDOM() < 0.7 THEN 'completed'
		WHEN RANDOM() < 0.9 THEN 'pending'
		ELSE 'cancelled'
	END AS order_status
FROM
	(
	SELECT
		UNNEST (generate_series(1,
		100)) AS order_id
);

-- use create table if we want it to store 