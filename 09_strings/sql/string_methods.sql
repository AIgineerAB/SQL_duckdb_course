-- in this script we'll test out different string methods
SELECT * FROM staging.sql_glossary;

-- array-like slicing is similar to Python, this is unique for duckdb, many other DBMS don't have this implemented 
SELECT
	sql_word,
	sql_word[:2],
	sql_word[2:5]
FROM
	staging.sql_glossary;

-- getitem
SELECT
	sql_word,
	sql_word[0], -- we get nothing since SQL starts counting from 1
	sql_word[1], -- some missing since we got leading spaces for some rows
	sql_word[-1], -- gets last character
FROM
	staging.sql_glossary;

-- concatenation
SELECT 'fun' || ' joke'

-- removes spaces 
SELECT
	trim(sql_word, ' ') as trimmed_word,
	trimmed_word[1],
	trimmed_word[-1]
FROM
	staging.sql_glossary;

-- transform character to uppercase
SELECT
	UPPER(trim(sql_word, ' ')) as trimmed_word,
	trimmed_word[1],
	trimmed_word[-1]
FROM
	staging.sql_glossary;










