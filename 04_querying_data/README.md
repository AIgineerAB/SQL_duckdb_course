# Querying data

Watch this video on how to query data using `SELECT` clause.


<a href="https://youtu.be/SNe4yH8DzqQ" target="_blank">
  <img src="https://github.com/kokchun/assets/blob/main/sql/04_query_data.png?raw=true" alt="querying data" width="600">
</a>




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

From duckdb documentation

- [select clause](https://duckdb.org/docs/sql/query_syntax/select)
- [aggregate functions](https://duckdb.org/docs/sql/functions/aggregates#arg_maxarg-val)
- [order by clause ](https://duckdb.org/docs/sql/query_syntax/orderby)