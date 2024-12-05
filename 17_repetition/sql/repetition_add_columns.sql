ALTER VIEW main.payment
ADD COLUMN cost_level TEXT;

UPDATE main.payment
SET
    cost_level = CASE
        WHEN amount < 3.5 THEN 'low cost'
        WHEN amount < 7.5 THEN 'medium cost'
        ELSE 'high cost'
    END;

SELECT table_name, table_type FROM information_schema.tables;