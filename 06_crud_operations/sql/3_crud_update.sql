SELECT * FROM database.duckdb d ;

-- with this we can check glossaries we've learnt
UPDATE database.duckdb 
SET learnt = TRUE 
WHERE id IN (3,6,7);