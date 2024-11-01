# Exercise 0 - Introduction to SQL

In this exercise, you get to familiarize yourself with SQL. For the practical exercises, you can open up your local repository as a project and make new connections to each databse file that you will work with.

> [!NOTE]
> To ingest data to the database, you should use CLI in combination with SQL script, as the relative path from dbeaver is not from the repository. Also absolute path is not recommended as this won't work for another computer.

## 0. Making a course database

Create a database called `sql_course_structure.duckdb` and go into the course github repo to find the underlying information. Now create a table containing information about the course similar to this table

| content             | week | content_type |
| ------------------- | ---- | ------------ |
| 00_intro            | 46   | lecture      |
| 01_course_structure | 46   | lecture      |
| 02_setup_duckdb     | 46   | lecture      |
| exercise_0          | 46   | exercise     |
| ...                 | ...  | ...          |
| tenta               | 51   | exam         |

&nbsp; a) Select all the exercises in this course

&nbsp; b) Select all the lectures in this course

&nbsp; c) Select all records for week 48

&nbsp; d) Select all records for week 47-49

&nbsp; e) How many lectures are in the table?

&nbsp; f) How many other content are there?

&nbsp; g) Which are the unique content types in this table?

&nbsp; h) Delete the row with content `02_setup_duckdb` and add it again.

&nbsp; i) You see that 02_setup_duckdb comes in the end of your table, even though the week is 46. Now make a query where you sort the weeks in ascending order.

&nbsp; j) Now you can choose what you want to explore in this table.

The more information you place into this table about the course content, the more it can help you in filtering out valuable information for your own planning.

## 1. Exploring hemnet data

Go to this [link to download hemnet data from kaggle](https://www.kaggle.com/datasets/florianlandras/stockholm-house-market-prices). Place the csv file into your local repository.

&nbsp; a) Create a database file called `hemnet.duckdb` and ingest the data from the csv file into your database.

&nbsp; b) Make a wildcard selection to checkout the data

&nbsp; c) Find out how many rows there are in the table

&nbsp; d) Describe the table that you have ingested to see the columns and data types.

&nbsp; e) Find out the 5 most expensive homes sold.

&nbsp; f) Find out the 5 cheapest homes sold.

&nbsp; g) Find out statistics on minimum, mean, median and maximum prices of homes sold.

&nbsp; h) Find out statistics on minimum, mean, median and maximum prices of price per area.

&nbsp; i) How many unique communes are represented in the dataset.

&nbsp; j) How many percentage of homes cost more than 10 million?

&nbsp; k) Feel free to explore anything else you find interesting in this dataset.

## 2. Theory questions

These study questions are good to get an overview of how SQL and relational databases work.

&nbsp; a) What is SQL, and why is it important in relational databases?

&nbsp; b) Explain the difference between HAVING and WHERE clauses.

&nbsp; c) Explain the purpose of the LIMIT or TOP clause in a SQL query.

&nbsp; d) What are the primary functions of the Data Definition Language (DDL) in SQL?

&nbsp; e) Explain the differences between the Data Manipulation Language (DML) and Data Definition Language (DDL).

&nbsp; f) What type of dot commands are there in duckdb?

&nbsp; g) Is DuckDB optimized for OLAP or OLTP workloads?

&nbsp; h) What makes DuckDB unique compared to other databases?

&nbsp; i) Is DuckDB suitable for real-time data processing?

&nbsp; j) Difference between read_csv and read_csv_auto

&nbsp; k) What is the purpose and advantages of using an IDE such as DBeaver?

## Glossary

TODO: LIFT out some glossary to other exercises where they fit

Fill in this table either by copying this into your own markdown file or copy it into a spreadsheet if you feel that is easier to work with.

| terminology         | explanation |
| ------------------- | ----------- |
| CRUD                |             |
| query               |             |
| statement           |             |
| DDL                 |             |
| DML                 |             |
| idempotent          |             |
| OLAP                |             |
| OLTP                |             |
| table               |             |
| schema              |             |
| row                 |             |
| record              |             |
| column              |             |
| database            |             |
| persistance         |             |
| DQL                 |             |
| relational database |             |
| ACID                |             |
| dot commands        |             |
| CLI                 |             |
| bash                |             |
| type inference      |             |
| selective query     |             |
| clause              |             |
| aliasing            |             |
| SQL statement       |             |
| persistent database |             |
| .wal                |             |
| IDE                 |             |
| csv                 |             |
| column projection   |             |
| projection          |             |
| selection           |             |
|                     |             |
