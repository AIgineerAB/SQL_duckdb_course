# Querying data

Watch this video on how to query data using `SELECT` clause.

<!-- [![setup duckdb and dbeaver and testing](https://github.com/kokchun/assets/blob/main/oop_advanced/dbeaver_setup.png?raw=true)](https://youtu.be/b9VMLSXKHwk) -->

- SELECT clause
- metadata information_schema

## Ingest data

Create an account on kaggle and download this [dataset on data engineering job salaries](https://www.kaggle.com/datasets/chopper53/data-engineer-salary-in-2024/data).

Use input redirection to read the SQL file and use it as input for duckdb database

```bash
 duckdb data/salaries.duckdb < sql/ingest_salaries.sql
```

## Query clauses

| clause   | what it does                      |
| -------- | --------------------------------- |
| select   | choose columns                    |
| from     | identify tables to retrieve data  |
| where    | filter rows based on condition    |
| group by | groups rows based on common value |
| having   | filter groups                     |
| order by | sorts rows by column(s)           |

## Other videos 📹

## Read more 👓

- [SELECT clause - duckdb docs](https://duckdb.org/docs/sql/query_syntax/select)
- [Aggregate functions - duckdb docs](https://duckdb.org/docs/sql/functions/aggregates#arg_maxarg-val)
- [ORDER BY clause - duckdb docs](https://duckdb.org/docs/sql/query_syntax/orderby)