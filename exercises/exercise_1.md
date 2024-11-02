# Exercise 1 - Data transformations

In this exercise, you get to familiarize yourself with SQL. For the practical exercises, you can open up your local repository as a project and make new connections to each databse file that you will work with.

> [!NOTE]
> To ingest data to the database, you should use CLI in combination with SQL script, as the relative path from dbeaver is not from the repository. Also absolute path is not recommended as this won't work for another computer.

> [!NOTE]
> Try not to skip those tasks which are more free, where you need to think what else that could be explored, transformed etc. These are very important as in industry it's common that you need to explore data and participate in stakeholders and team discussions.

## 0. Transform salaries data

For this task you should use the same salaries data as in lecture 04 and 05. Create a new table that should contain the transformed data and call the table cleaned_salaries.

&nbsp; a) Transform employment type column based on this table

| abbreviation | meaning   |
| ------------ | --------- |
| CT           | Contract  |
| FL           | Freelance |
| PT           | Part time |
| FT           | Full time |

&nbsp; b) Do similar for company size, but you have to figure out what the abbreviations could stand for.

&nbsp; c) Make a salary column with Swedish currency for yearly salary.

&nbsp; d) Make a salary column with Swedish currency for monthly salary.

&nbsp; e) Make a salary_level column with the following categories: low, medium, high, insanely_high. Decide your thresholds for each category. Make it base on the monthly salary in SEK.

&nbsp; f) Choose the following columns to include in your table: experience_level, employment_type, job_title, salary_annual_sek, salary_monthly_sek, remote_ratio, company_size, salary_level

&nbsp; g) Think of other transformation that you want to do.

## 1. Explore your transformed table

&nbsp; a) Count number of Data engineers jobs. For simplicity just go for job_title Data Engineer.

&nbsp; b) Count number of unique job titles in total.

&nbsp; c) Find out how many jobs that goes into each salary level.

&nbsp; d) Find out the median and mean salaries for each seniority levels.

&nbsp; e) Find out the top earning job titles based on their median salaries and how much they earn.

&nbsp; f) How many percentage of the jobs are fully remote, 50 percent remote and fully not remote.

&nbsp; g) Pick out a job title of interest and figure out if company size affects the salary. Make a simple analysis as a comprehensive one requires causality investigations which are much harder to find.

&nbsp; h) Feel free to explore other things

## 2. Theory questions

These study questions are good to get an overview of how SQL and relational databases work.

&nbsp; a) What are the main categories of SQL commands?

&nbsp; b) Explain the difference between HAVING and WHERE clauses?

&nbsp; c) How to make sure you delete the correct rows?

&nbsp; d) How do you retrieve unique values in a column?

&nbsp; e) What does data transformation mean?

&nbsp; f) How do you create a new row in a table?

&nbsp; g) What happens if you omit the WHERE clause in an UPDATE statement?

&nbsp; h) What happens if you omit the WHERE clause in a DELETE statement?

&nbsp; i) What is a conditional statement in SQL, and can it be used with SELECT?

## Glossary

Fill in this table either by copying this into your own markdown file or copy it into a spreadsheet if you feel that is easier to work with.

| terminology         | explanation |
| ------------------- | ----------- |
| CRUD                |             |
| query               |             |
| statement           |             |
| schema              |             |
| aliasing            |             |
| projection          |             |
| selection           |             |
| namespace           |             |
| SELECT clause       |             |
| WHERE clause        |             |
| condition           |             |
| BETWEEN             |             |
| aggregate functions |             |
| range filtering     |             |
| pattern matching    |             |
| list filtering      |             |
|                     |             |
|                     |             |
|                     |             |
