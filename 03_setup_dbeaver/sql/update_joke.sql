SELECT * FROM funny_jokes;

-- updates rating of the joke with id 7 to 10
UPDATE
	funny_jokes
SET
	rating = 10
WHERE
	id = 7;
