# Setup duckdb

Watch this video on how to setup dbeaver.

<!-- [![setup duckdb and dbeaver and testing](https://github.com/kokchun/assets/blob/main/oop_advanced/dbeaver_setup.png?raw=true)](https://youtu.be/b9VMLSXKHwk) -->

## Setup

Follow [this link to install duckdb](https://duckdb.org/docs/installation/?version=stable&environment=cli&platform=macos&download_method=package_manager) on your computer.

## Bash commands

If you are in windows use git bash, if you are in mac or linux just use the terminal. In visual studio code open up a terminal then you can set the default profile of your terminal to open up in git bash

<img src="https://github.com/kokchun/assets/blob/main/sql/default_profile.png?raw=true" width=300/>

To navigate using bash you have these commands

| Command | Description                              |
| ------- | ---------------------------------------- |
| `cd`    | change the current directory             |
| `cd ..` | go up a directory                        |
| `ls`    | list the contents of a directory         |
| `ls -a` | lists all files including hidden files   |
| `pwd`   | print the current working directory path |
| `<`     | input redirection                        |

> [!NOTE]
> There are many more bash commands, but we'll just cover the most basic ones here so that you can navigate in the computer without a GUI.

## Duckdb CLI

To check that it works, lets go to the terminal, navigate to your local repository and run the following command

```bash
duckdb test_yt.duckdb
```

By doing this it creates a persistent or a file-backed database that is saved on disk when you run any commands. So lets run a few commands

```sql
-- describes structures of database objects
desc;

-- query metadata about the database
SELECT * FROM information_schema.schemata;
SELECT * FROM information_schema.tables;
```

To close down the database connection do `ctrl + D` for mac and `ctrl + C` for windows in the terminal.

## Ingest data

Now we'll ingest data from a csv file into our test.duckdb. So start by opening up a connection to your database file

```bash
duckdb test_yt.duckdb
```

Then to ingest the data into the database run

```sql
CREATE TABLE IF NOT EXISTS
  videos AS (
    SELECT * FROM read_csv_auto('yt_videos.csv')
    );
```

Finally we'll check that the data is there by selecting all the columns (wildcard selection)

```sql
SELECT * FROM videos;
```

Now close down the database connection and open it up again, then do wildcard selection once more and test out `desc` as well to see that the data is persistent. Close down the database connection, git commit your changes and push it to github.

## Other videos 📹

- [Duckdb tutorial for beginners - MotherDuck](https://www.youtube.com/watch?v=ZX5FdqzGT1E&t=19s)

## Read more 👓

- [csv import - duckdb docs](https://duckdb.org/docs/data/csv/overview)
- [csv import tips - duckdb docs](https://duckdb.org/docs/data/csv/tips)
- [importing data - duckdb docs](https://duckdb.org/docs/data/overview)
