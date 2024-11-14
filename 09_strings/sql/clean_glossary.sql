CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE
    IF NOT EXISTS refined.sql_glossary AS (
        SELECT
            UPPER(TRIM(sql_word)) AS sql_word,
            description,
            example
        FROM
            staging.sql_glossary
    );

-- TOOD for the reader do more cleaning