-- find the row with select first to make sure we delete correct one
SELECT * FROM programming.python WHERE id = 2;

DELETE
FROM
	programming.python
WHERE
	id = 2;

-- check that it is deleted
SELECT * FROM programming.python p ;


SELECT * FROM database.duckdb WHERE id > 10;

DELETE FROM database.duckdb WHERE id > 10;