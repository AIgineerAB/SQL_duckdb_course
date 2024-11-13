-- ' +' matches 1 or more spaces
SELECT
	regexp_replace(trim(description),
	' +',
	' ',
	'g') AS cleaned_description,
	regexp_replace(trim(lower(example)),
	' +',
	' ',
	'g') AS example,
FROM
	staging.sql_glossary;
	
-- filtering rows with LIKE operator
-- % matches 0 or more characters  
SELECT
	*
FROM
	staging.sql_glossary
WHERE
	LOWER(description) LIKE '%select%';
	
-- \b makes it match exactly select word
SELECT
	*
FROM
	staging.sql_glossary
WHERE
	regexp_matches(LOWER(description),
	'select\b')
