# Pizza-sales-dashboard
SQL(SSMS), EXCEL, POWERBI

## Project Overview
This project involves analyzing pizza sales data using SQL and Power BI to generate key performance indicators (KPIs) and insightful visualizations. The objective is to understand business performance and customer preferences through data processing, transformation, and visualization.

## Steps Involved

### 1. Data Import & Cleaning
- Imported CSV file into SQL Server Management Studio (SSMS).
- Analyzed KPI and chart requirements using SQL queries (`CAST`, `DECIMAL`, `TOP 5`, `DATENAME`).
- Used `USE [DATABASE_NAME]` to resolve connection errors.
- Integrated SQL with Power BI.
- Cleaned data using Power Query.
- Transformed pizza size values: 
  - `S` → `Regular`
  - `M` → `Medium`
  - `L` → `Large`
  - `XL` → `X-Large`
  - `XXL` → `XX-Large`

### 2. Data Processing
- Added DAX measures as per KPI requirements.
- Built visualizations and dashboards.
  
- Dashboard1:
  -HEADING-SHAPE,TEXT BOX, conditional formatting bar colors, extracting day column, day number column from date take only first three letter by 
  UPPER(LEFT(Pizza_sales[day name]),3)),adding conditional columns for sorting graph day wise, extracting month column, month number column from date
-Dashboard2:
  -using mearusers like total revenue, total sold pizza ,total orders
  -added Navigator Button
  
  ![Button](https://github.com/user-attachments/assets/3ffdf9e7-8e8d-445a-846c-2478aeb14cca)
  
- Created KPI metric cards.

## KPI Requirements
Analyzing the key indicators of pizza sales data to gain insights into business performance by calculating the following metrics
1. **Total Revenue**: Sum of total price of all pizza orders.
2. **Average Order Value**: `Total Revenue / Total Number of Orders`.
3. **Total Pizza Sales**: Sum of pizza quantities sold.
4. **Total Orders**: Count of all orders placed.
5. **Average Pizza Per Order**: `Total Pizzas Sold / Total Orders`.

## Chart Requirements


1. **Daily Trend for Total Orders**
   -Created a bar chart that displays the daily trend of total orders over a specific time period. This chart will help us identify any patterns or fluctuations in     order volumes on a daily basis.
   
2. **Monthly Trend for Total Orders**
   -Create a line chart that illustrates the hourly trend of total orders throughout the day. This chart will allow us to identify peak hours or periods of high 
    order activity.

3. **Percentage of Sales by Pizza Category**
   - Create a Pie chart that shows the distribution of sales across different pizza categories. This chart will provide insights into the popularity of various 
     pizza categories and their contribution to overall sales.

4. **Percentage of Sales by Pizza Size**
   - Generate a pie chart that represents the percentage of sales attributed to different pizza sizes. This chart will help us understand customer preferences for 
     pizzas sizes and their impact for sales

5. **Total Pizzas Sold by Pizza Category**
   - Create a funnel chart that presents the total number of pizzas sold for each pizza category. This chart will allow us to compare the sales performance of 
     different pizza category

6. **Top 5 Best Sellers** (By Revenue, Quantity, and Orders)
   - Create a bar chart highlighting the top 5-best selling pizzas based on the Revenue, Total Quality, Total Orders. This chart will help us identify the most 
     popular pizza options.

7. **Bottom 5 Worst Sellers** (By Revenue, Quantity, and Orders)
   - Create a bar chart showcasing the bottom 5-worst selling pizzas based on the Revenue, Total Quality, Total Orders. This chart will help us identify       
     underperforming or the least popular pizza options..

## Additional Features
- Used advanced Power BI functionalities like conditional formatting and sorting.
- Added navigation buttons for seamless dashboard interaction.

### Dashboard 1

![Dashboard1](https://github.com/user-attachments/assets/e408b71f-be8f-45ae-a230-0d66bc7dbebb)

### Dashboard 2

![Dashboard2](https://github.com/user-attachments/assets/9be51967-1a04-43fd-9b7e-70a337c4b228)
---

### Technologies Used
- **SQL Server Management Studio (SSMS)**
- **Power BI (Power Query, DAX, Data Visualizations)**
- **CSV Data Processing**
