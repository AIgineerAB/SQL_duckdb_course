-- combine rows and removes duplicate rows
-- a duplicate is when all columns are same
SELECT * FROM synthetic.sales_jan 
UNION
SELECT * FROM synthetic.sales_feb;


-- note here that monitor and its price are same in two rows
-- hence removed  
SELECT product_name, amount FROM synthetic.sales_jan
UNION 
SELECT product_name, amount FROM synthetic.sales_feb;

-- UNION ALL operator combines rows and retain duplicates
SELECT product_name, amount FROM synthetic.sales_jan
UNION ALL
SELECT product_name, amount FROM synthetic.sales_feb;


-- INTERSECT operation - gives common rows across both tables
-- gives nothing as none of the rows are exactly same
SELECT * FROM synthetic.sales_jan
INTERSECT
SELECT * FROM synthetic.sales_feb;


SELECT product_name, amount FROM synthetic.sales_jan
INTERSECT
SELECT product_name, amount FROM synthetic.sales_feb;


-- EXCEPT operator, rows in sales_jan but not in sales_feb
-- this removes monitor as it is common in both tables
SELECT product_name, amount FROM synthetic.sales_jan
EXCEPT
SELECT product_name, amount FROM synthetic.sales_feb;


