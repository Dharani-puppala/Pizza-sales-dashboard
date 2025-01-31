Use [PIZZA DB] -- if you have a connection error
SELECT DATENAME(DW,order_date) as order_day, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza
GROUP BY DATENAME(DW,order_date)


SELECT DATENAME(MONTH, order_date) AS Month_Name , COUNT(DISTINCT order_id) AS Total_Orders
FROM  pizza
GROUP BY DATENAME(MONTH, order_date)
ORDER BY Total_Orders DESC

SELECT pizza_category , SUM(total_price) AS Total_Sales, SUM(Total_Price)*100/
(SELECT SUM(total_price)FROM pizza WHERE MONTH(order_date) =1) AS PCT
FROM pizza
WHERE MONTH(order_date )= 1
GROUP BY pizza_category

SELECT pizza_size,CAST( SUM(total_price) AS DECIMAL(10,2))AS Total_Sales,
CAST(SUM(total_price)*100 / (SELECT  SUM(total_price) FROM pizza WHERE DATEPART(quarter, order_date)=1) AS DECIMAL(10,2)) AS PCT
FROM pizza
WHERE DATEPART(quarter, order_date)=1
GROUP BY pizza_size
ORDER BY PCT DESC

-- CHAERT 6
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza
GROUP BY  pizza_name
ORDER BY Total_Revenue ASC

SELECT  TOP 5  pizza_name, SUM(quantity) AS Total_Quantity
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Quantity ASC

SELECT TOP 5 pizza_name, COUNT(DISTiNCT order_id)  AS Total_orders
FROM pizza
GROUP  BY pizza_name
ORDER BY Total_orders DESC

SELECT TOP 5 pizza_name, COUNT(DISTiNCT order_id)  AS Total_orders
FROM pizza
GROUP  BY pizza_name
ORDER BY Total_orders ASC