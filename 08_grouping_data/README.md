# Group by

Watch this video on how to group data using `GROUP BY` clause.

**Part 1 group by theory**

<a href="https://youtu.be/FHRplWe0Lrk" target="_blank">
<img src="https://github.com/kokchun/assets/blob/main/sql/08_group_by.png?raw=true" alt="group by clause" width="600">
</a>

**Part 2 group by coding**

<a href="https://www.youtube.com/watch?v=hps8P9fmfCk" target="_blank">
<img src="https://github.com/kokchun/assets/blob/main/sql/08_a_group_by.png?raw=true" alt="group by clause" width="600">
</a>

Go into this [link in kaggle to download food searches on google since 2004](https://www.kaggle.com/datasets/GoogleNewsLab/food-searches-on-google-since-2004)

## Execution order



1. FROM/JOIN
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. DISTINCT
7. ORDER BY
8. LIMIT/OFFSET

## Syntax order

Note that the syntax order are different than the execution order 

1. SELECT
2. FROM
3. JOIN 
4. WHERE 
5. GROUP BY 
6. HAVING 
7. ORDER BY 
8. LIMIT 

However in duckdb actually, there is FROM-first syntax, where the FROM clause comes before SELECT clause. 

## Other videos 📹

## Read more 👓

From duckdb documentation

- [group by clause](https://duckdb.org/docs/sql/query_syntax/groupby.html)
- [having clause](https://duckdb.org/docs/sql/query_syntax/having)

Other
- [Order of execution SQL](https://www.shiksha.com/online-courses/articles/order-of-execution-in-sql/)