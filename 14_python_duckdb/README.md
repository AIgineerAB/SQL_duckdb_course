# Python connect duckdb


**Using python to connect to duckdb part 1**
[![python connect duckdb part 1](https://github.com/kokchun/assets/blob/main/oop_advanced/connect_python_duckdb_part1.png?raw=true)](https://youtu.be/lwK1J3W04Bw)

**Using python to connect to duckdb part 2**
[![python connect duckdb part 2](https://github.com/kokchun/assets/blob/main/oop_advanced/connect_python_duckdb_part2.png?raw=true)](https://youtu.be/cJZrhxz4IP4)

**Using python to connect to duckdb part 3**
[![python connect duckdb part 3](https://github.com/kokchun/assets/blob/main/oop_advanced/connect_python_duckdb_part3.png?raw=true)](https://youtu.be/JFNTmYiI7PE)

## Python prerequisites concepts 
As this is not a Python course, we haven't covered any Python up to this point. However 
the following contents is good to have some basic grasp in to understand this lecture

- OOP 
- pandas dataframe
- python modules
- working with paths in python
- working with virtual environment, in this case uv

If these feel unfamiliar to you, you can take a look at one of my [introduction python course](https://github.com/kokchun/Python-course-AI22) for reference. 

Start with installing duckdb in your virtual environment

```bash
uv pip install duckdb
```

We'll work with [open data from Göteborgs stad](https://goteborg.se/wps/portal/start/kommun-och-politik/sa-arbetar-goteborgs-stad-med/digitalisering/oppna-data/sok-oppna-data/oppna-data---datamangd#esc_entry=62167&esc_context=6). These are data on "leverantörsfakturor" or supplier invoices to Göteborg stad. It's always good to get insight in how the city is spending our tax money. 

> [!NOTE]
> I've recorded this video in mid-autumn 2024, so there is a risk the dataset can't be found in Göteborg stad. In that case you can just pick two most recent invoices or download the csv files directly from this repo.  


> [!NOTE]
> In the video I've used goteborg_stad.db instead of goteborg_stad.duckdb. It would work with either .db or .duckdb as file suffix.  

## Other videos :video_camera:

## Read more :eyeglasses:

- [Using DuckDB in Python: A Comprehensive Guide - A. Bantra (2024)](https://medium.com/@anshubantra/using-duckdb-in-python-a-comprehensive-guide-d14bc0b06546)
