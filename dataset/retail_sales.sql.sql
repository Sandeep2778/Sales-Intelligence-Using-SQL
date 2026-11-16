CREATE DATABASE retail_db;
USE retail_db;

CREATE TABLE retail_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    sales DECIMAL(12,2),
    profit DECIMAL(12,2),
    region VARCHAR(50)
);
