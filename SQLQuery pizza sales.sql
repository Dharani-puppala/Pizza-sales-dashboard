
SELECT SUM(total_price) AS	Total_Revenue
FROM pizza_sales 

SELECT SUM(total_price)/ COUNT(DISTINCT order_id) AS Average_Order_Value
FROM pizza_sales

SELECT SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales

SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales

SELECT SUM(quantity)/ COUNT(DISTINCT order_id) AS Average_Pizza_Per_Order
FROM pizza_sales
--rounding of the values

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2))/ CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2))AS DECIMAL(10,2)) AS Average_Pizza_Per_Order
FROM pizza_sales
--gives upto 10 total digits (precision), including both the digits before and after the decimal point.
--2 digits after the decimal point (scale).
--The sum of 10 + 15 + 20.5 equals 45.5.
--The CAST ensures the output is formatted as 45.50 (2 decimal places).

