CREATE SCHEMA IF NOT EXISTS staging;

CREATE TABLE
    IF NOT EXISTS staging.invoice_202410 AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/Leverantorsfaktura202410.csv')
    );

CREATE TABLE
    IF NOT EXISTS staging.invoice_202408 AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/Leverantorsfaktura202408.csv')
    );