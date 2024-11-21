-- creating synthetic data and populating tables 

CREATE SCHEMA IF NOT EXISTS synthetic;

CREATE TABLE IF NOT EXISTS synthetic.sales_jan (
    id INTEGER,
    product_name TEXT,
    amount DECIMAL(10, 2),
    sale_date DATE
);


CREATE TABLE IF NOT EXISTS synthetic.sales_feb (
    id INTEGER,
    product_name TEXT,
    amount DECIMAL(10, 2),
    sale_date DATE
);


CREATE TABLE IF NOT EXISTS synthetic.products (
    id INTEGER,
    product_name TEXT,
    category TEXT,
    price DECIMAL(10, 2)
);


INSERT INTO synthetic.sales_jan VALUES 
(1, 'Laptop', 1200.50, '2024-01-05'),
(2, 'Headphones', 200.00, '2024-01-12'),
(3, 'Monitor', 300.00, '2024-01-15');


INSERT INTO synthetic.sales_feb VALUES 
(3, 'Monitor', 300.00, '2024-02-10'),
(4, 'Keyboard', 100.00, '2024-02-11'),
(5, 'Mouse', 50.00, '2024-02-18');


INSERT INTO synthetic.products VALUES 
(1, 'Laptop', 'Electronics', 1200.00), -- duplicate row
(2, 'Smartphone', 'Electronics', 800.00),
(3, 'Table', 'Furniture', 150.00),
(4, 'Chair', 'Furniture', 100.00),
(5, 'Laptop', 'Electronics', 1200.00); -- duplicate row





SELECT * FROM synthetic.sales_jan; 

SELECT * FROM synthetic.sales_feb; 