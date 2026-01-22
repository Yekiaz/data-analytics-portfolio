-- SQL E-commerce Sales Analysis
-- Author: Yekiaz
-- Description: SQL queries to analyze e-commerce sales data

USE ecommerce_db;

-- Preview data
SELECT *
FROM ecommerce_sales_data
LIMIT 10;

-- Total revenue by product category
SELECT
    ProductCategory,
    ROUND(SUM(Quantity * Price), 2) AS total_sales
FROM ecommerce_sales_data
GROUP BY ProductCategory
ORDER BY total_sales DESC;

-- Top 10 products by revenue
SELECT
    ProductID,
    ROUND(SUM(Quantity * Price), 2) AS revenue
FROM ecommerce_sales_data
GROUP BY ProductID
ORDER BY revenue DESC
LIMIT 10;
