-- want to delete bad jokes, lets say rating < 5
-- to make sure which to delete, lets first select those rows
SELECT
	*
FROM
	funny_jokes
WHERE
	rating <5;


-- now we can delete these two rows, note that this is a 
DELETE
FROM
	funny_jokes
WHERE
	rating <5;

-- now it has been deleted
SELECT * FROM funny_jokes;