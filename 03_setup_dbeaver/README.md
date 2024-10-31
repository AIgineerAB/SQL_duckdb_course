# Setup dbeaver

Watch this video on how to setup dbeaver.

<!-- [![setup duckdb and dbeaver and testing](https://github.com/kokchun/assets/blob/main/oop_advanced/dbeaver_setup.png?raw=true)](https://youtu.be/b9VMLSXKHwk) -->

## Install dbeaver community

Now [download and install dbeaver community](https://dbeaver.io/download/), which is an IDE for viewing databases.

Now that you have dbeaver installed, we need to connect it to an existing duckdb database file. So lets move on to terminal and create a database called `jokes.duckdb`

```bash
duckdb jokes.duckdb
```

and then run a command so that it saves on disk, lets say `desc` command to describe the database. Now there should be a database file called `jokes.duckdb` saved in your file system. When you see jokes.duckdb file, exit duckdb CLI with ctrl+C (windows) or ctrl+D (mac).

## Connect to duckdb

It's time to connect to this database file using dbeaver, so open up dbeaver and do the following

1. open new project, file > import from directory where your jokes.duckdb file is
2. establish a connection to your jokes.duckdb file
3. create an sql folder under 03_setup_dbeaver
4. mark this folder and create

> [!NOTE]
> The first time when connecting to duckdb database file, you will be prompted to download and install JDBC driver.
> Follow the instructions and do it.

## SQL scripts

Create a table called funny_jokes

```sql
CREATE TABLE funny_jokes (
    id INTEGER PRIMARY KEY,
    joke_text VARCHAR,
    rating INTEGER
);
```

This SQL command or more specifically a data definition language (DDL) command creates a table called funny_jokes with the columns id, joke_text and rating. Data types are specified for each of the columns and the id column also has a primary key constraint.

Then insert some values

```sql
INSERT INTO funny_jokes (id, joke_text, rating) VALUES
(1, 'Why don’t scientists trust atoms? Because they make up everything!', 8),
(2, 'Why did the scarecrow win an award? Because he was outstanding in his field!', 7),
(3, 'I told my wife she was drawing her eyebrows too high. She looked surprised.', 9),
(4, 'Why don’t skeletons fight each other? They don’t have the guts.', 6);
```

Also control that the table jokes have been populated by

```sql
SELECT * FROM funny_jokes;
```

This creates a table in the schema `main` which is the default schema. Tables are organized in schemas, which function like folders that group related tables and database objects together.

Now lets describe different database objects using

```sql
desc;
```

Here we can see that main is the default schema for DuckDB as we haven't specified any schemas when creating the table. We can describe a table directly with `desc`

```sql
-- both give same results here
desc funny_jokes;
desc jokes.main.jokes;
```

That was funny, lets get some more jokes


```sql
INSERT INTO jokes (id, joke_text, rating) VALUES
(5, 'Why don’t some couples go to the gym? Because some relationships don’t work out.', 8),
(6, 'I would avoid the sushi if I was you. It’s a little fishy.', 7),
(7, 'Want to hear a joke about construction? I’m still working on it.', 6),
(8, 'Why don’t programmers like nature? It has too many bugs.', 9),
(9, 'How does a penguin build its house? Igloos it together.', 1),
(10, 'A gothenburg person stands in queue for star wars. When someone cuts the line he says ge daj.', 2);
```

## Gitignore

Since you are working on a git repository it's good to add dbeaver specific artifacts to your gitignore so they don't get tracked.

```bash
# dbeaver
.project
.dbeaver
```

## Other videos 📹

- [DBeaver Tutorial - How to Use DBeaver (SQL Editor) - Database Star (2022)](https://www.youtube.com/watch?v=LEx96-CkB1Q)

## Read more 👓

- [dbeaver docs](https://dbeaver.com/docs/dbeaver/)