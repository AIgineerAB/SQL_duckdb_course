# Exercise 2 - TBD

In this exercise, you get to familiarize yourself with SQL. For the practical exercises, you can open up your local repository as a project and make new connections to each databse file that you will work with.

> [!NOTE]
> To ingest data to the database, you should use CLI in combination with SQL script, as the relative path from dbeaver is not from the repository. Also absolute path is not recommended as this won't work for another computer.

> [!NOTE]
> Try not to skip those tasks which are more free, where you need to think what else that could be explored, transformed etc. These are very important as in industry it's common that you need to explore data and participate in stakeholders and team discussions.

## 0. Dice rolls simulations

&nbsp; a) Generate 10 rows of dice rolls data

&nbsp; b) Calculate the average of getting a six

&nbsp; c) Generate 100 rows of dice rolls and calculate average of getting a six

&nbsp; d) Repeat the experiment with 1000, 10000, 100000, 1000000 rolls.

<!-- Can you make these in the same query, so you get one column for each experiment?

The result set could look similar to this

| 10 rolls | 100 | 1000 | 10000 | 100000 | 1000000 |
| -------- | --- | ---- | ----- | ------ | ------- |
| 0.5      | 0.2 | ...  | ...   | ...    | ...     | -->

&nbsp; e) What is the theoretical mean?

## 1. Cleaning malformed text data

Continue working on the data from lecture 09_strings. In this lecture you created a schema called staging and ingested the raw data into the staging schema.

&nbsp; a) Create a schema called refined. This is the schema where you'll put the transformed data.

&nbsp; b) Now transform and clean the data and place the cleaned table inside the refined schema.

&nbsp; c) Practice filtering and searching for different keywords in different columns. Discuss with a friend why this could be useful in this case.

## 2. More extensive EDA on the sakila database

You will be using the same database as in 11_joins. Take some time to really understand this database, as we'll come back to this database later in this course and in data modeling course.

&nbsp; a) Describe all tables.

&nbsp; b) Select all data on all tables.

&nbsp; c) Find out how many rows there are in each table.

The questions here might come from a business stakeholder which is not familiar with the table structure. Hence it's your job to find out which table(s) to look at.

&nbsp; d) Calculate descriptive statistics on film length.

&nbsp; e) What are the peak rental times?

&nbsp; f) What is the distribution of film ratings?

&nbsp; g) Who are the top 10 customers by number of rentals?

&nbsp; h) Retrieve a list of all customers and what films they have rented.

&nbsp; i) Make a more extensive EDA of your choice on the Sakila database.

## 3. Sets and joins on sakila

&nbsp; a) Retrieve a list of all customers and actors which last name starts with G.

Retrieve a list of all customers and what films they have rented.

## 4. Theory questions

These study questions are good to get an overview of how SQL and relational databases work.

&nbsp; a) What is the difference between INNER JOIN and INTERSECT?

&nbsp; b) When are the purposes of set operations?

&nbsp; c) What are the main difference between joins and set operations?

&nbsp; d) When is set operators used contra logical operators?

&nbsp; e) How to achieve this using set operations in SQL, where A and B are result sets.

<img src ="https://github.com/kokchun/assets/blob/main/sql/set_question_1.png?raw=true" width = 200>

&nbsp; f) How to achieve this using set operations in SQL, where A and B are result sets.

<img src ="https://github.com/kokchun/assets/blob/main/sql/set_question_2.png?raw=true" width = 200>

&nbsp; g)

&nbsp; h)

&nbsp; i)

## Glossary

Fill in this table either by copying this into your own markdown file or copy it into a spreadsheet if you feel that is easier to work with.

| terminology    | explanation |
| -------------- | ----------- |
| temporal       |             |
| interval       |             |
| synthetic      |             |
| VALUES         |             |
| subquery       |             |
| compound query |             |
| set operations |             |
| EXCEPT         |             |
| result set     |             |
| UNION          |             |
| UNION ALL      |             |
| operator       |             |
| INTERSECT      |             |
| venn diagram   |             |
| LEFT JOIN      |             |
| INNER JOIN     |             |
| RIGHT JOIN     |             |
| LIKE           |             |
|                |             |
