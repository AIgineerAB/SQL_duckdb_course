# Setup dbeaver


Watch this video on how to setup dbeaver. 
<!-- [![setup duckdb and dbeaver and testing](https://github.com/kokchun/assets/blob/main/oop_advanced/dbeaver_setup.png?raw=true)](https://youtu.be/b9VMLSXKHwk) -->


## Install dbeaver community 

Now [download and install dbeaver community](https://dbeaver.io/download/), which is an IDE for viewing databases. 

Now that you have dbeaver installed, we need to connect it to an existing duckdb database file. So lets move on to terminal and create a database called `jokes.duckdb`

```bash
duckdb jokes.duckdb
```

and then run a command so that it saves on disk, lets say `desc` command to describe the database. Now there should be a database file called `jokes.duckdb` saved in your file system.

It's time to connect to this database file using dbeaver, so open up dbeaver and do the following 

1. open new project, import from directory where your first_db.db file is 
2. establish a connection to your first_db.db file
3. create SQL script and start using SQL


Create a table called funny_jokes
```sql 
CREATE TABLE funny_jokes (
    id INTEGER PRIMARY KEY,
    joke_text VARCHAR,
    rating INTEGER
);
```


## Other videos 📹

## Read more 👓
