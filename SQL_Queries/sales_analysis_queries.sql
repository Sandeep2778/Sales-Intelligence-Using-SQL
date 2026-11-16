Customer and Sales Data Analysis Using Queries

1. View All Sales Records

SELECT *
FROM RETAIL_SALES;

2. Calculate Total Number of Orders

SELECT COUNT(*) AS TOTAL_ORDERS
FROM RETAIL_SALES;

3. Calculate Total Revenue

SELECT SUM(SALES) AS TOTAL_REVENUE
FROM RETAIL_SALES;

4. Calculate Total Profit

SELECT SUM(PROFIT) AS TOTAL_PROFIT
FROM RETAIL_SALES;

5. Identify Unique Product Categories

SELECT DISTINCT CATEGORY
FROM RETAIL_SALES;


6. Calculate Total Unique Customers

SELECT COUNT(DISTINCT CUSTOMER_ID) AS TOTAL_CUSTOMERS
FROM RETAIL_SALES;

7. Sort Sales from Highest to Lowest

SELECT *
FROM RETAIL_SALES
ORDER BY SALES DESC;


8. Filter Electronics Category Records

SELECT *
FROM RETAIL_SALES
WHERE CATEGORY = 'Electronics';


9. Identify Orders with Sales Greater Than 50,000

SELECT *
FROM RETAIL_SALES
WHERE SALES > 50000;


11. Analyze Electronics Sales by Region

Filter Electronics Category
Group Sales by Region
Display Regions with Sales Above 50,000
Sort Results by Highest Revenue

SELECT
    REGION,
    SUM(SALES) AS TOTAL_SALES
FROM RETAIL_SALES
WHERE CATEGORY = 'Electronics'
GROUP BY REGION
HAVING SUM(SALES) > 50000
ORDER BY TOTAL_SALES DESC;


12. INNER JOIN
Combine Matching Records from Sales and Customers Tables

SELECT
    r.order_id,
    r.customer_name,
    c.city,
    c.customer_segment,
    r.sales
FROM retail_sales r
INNER JOIN customers c
ON r.customer_id = c.customer_id;


13. LEFT JOIN
Display All Customers and Their Matching Orders

SELECT
    c.customer_name,
    c.city,
    r.order_id,
    r.sales
FROM customers c
LEFT JOIN retail_sales r
ON c.customer_id = r.customer_id;


14. RIGHT JOIN
Display All Customer Records from the Right Table

SELECT
    r.order_id,
    c.customer_name,
    c.city,
    r.sales
FROM retail_sales r
RIGHT JOIN customers c
ON r.customer_id = c.customer_id;