Othoba Sales Analysis
This repository contains SQL queries to analyze Othoba.com sales data, offering insights into total orders, revenue, product performance, and customer behavior.

Database Schema
The othoba_sales table includes the following key fields:

Order & Shipping Details: SubOrderId, OrderShippingExclTax, ShipmentBy, ShippingStatus, DeliveredDate
Customer Details: ShippingFullName, ShippingPhoneNumber, OrderCreatedOn, Month, Year, PaymentMethod
Product & Financial Data: ProductName, SKU, Category, Quantity, RegularPrice, TotalSellingPrice, Profit, SalesPerson
Status & Metrics: OrderStatus, FinalOrderStatus, PaymentStatus, B2C_B2B
Key Queries
Total Orders: Counts unique orders using SubOrderId.
Order Timeframe: Finds the earliest and latest order dates.
Average Order Value (AOV): Calculates average order value by dividing total sales by total distinct orders.
Total Revenue: Sums revenue for completed orders (FinalOrderStatus = 'Sales').
Top Product Category: Identifies the best-performing product category based on sales.
Top 5 Customers by Spending: Ranks customers by total spending.
Repeat Customer Rate: Calculates the percentage of customers who placed more than one order.
Most Popular Order Time: Finds the most frequent order hour.
Sales by Day of Week: Analyzes total sales for each day of the week.
Revenue Over Time: Tracks cumulative revenue over time.
Top Products by Revenue and Quantity: Ranks products within categories by revenue and quantity sold.


--------------Queries:
CREATE TABLE othoba_sales (
    SubOrderId VARCHAR(50),
    OrderShippingExclTax DECIMAL(10, 2),
    ShipmentBy VARCHAR(50),
    ShippingStatus VARCHAR(50),
    OrderStatus VARCHAR(50),
    FinalOrderStatus VARCHAR(50),
    PaymentStatus VARCHAR(50),
    PreShipmentStatus VARCHAR(50),
    OrderUpdateStatus VARCHAR(50),
    DeliveredDate TIMESTAMP,
    ShippingFullName VARCHAR(300),
    ShippingDivision VARCHAR(300),
    ShippingStateProvince VARCHAR(50),
    OrderVia VARCHAR(50),
    ShippingPhoneNumber VARCHAR(20),
    MobileNumber VARCHAR(20),
    OrderCreatedOn TIMESTAMP,
    Month VARCHAR(20),
    Year INT,
    PaymentMethod VARCHAR(50),
    OrderPaidOn TIMESTAMP,
    OrderCancelReason VARCHAR(50),
    SLNo INT,
    ProductName VARCHAR(400),
    ProductAttribute VARCHAR(255),
    AttributeItemCode VARCHAR(50),
    SKU VARCHAR(50),
    VendorGroup VARCHAR(50),
    DeliveryChannelType VARCHAR(100),
    
    Quantity INT,
    RegularPrice DECIMAL(10, 2),
    UnitSellingPrice DECIMAL(10, 2),
    TotalSellingPrice DECIMAL(10, 2),
    UnitCostPrice DECIMAL(10, 2),
    TotalCostPrice DECIMAL(10, 2),
    Commission DECIMAL(10, 2),
    Profit DECIMAL(10, 2),
    ProfitMargin DECIMAL(10, 2),
    SalesPerson VARCHAR(100),
    Category VARCHAR(100),
    B2C_B2B VARCHAR(50)
);
##total orders

SELECT COUNT(DISTINCT SubOrderId) AS total_orders
FROM othoba_sales;

SELECT MIN(OrderCreatedOn) AS start_date, MAX(OrderCreatedOn) AS end_date
FROM othoba_sales;

##Average_Order_Value_(AOV)

SELECT ROUND(SUM(TotalSellingPrice)/COUNT(DISTINCT SubOrderId), 2) AS AVG_ODR_VALUE
FROM othoba_sales;

##total revenue
SELECT SUM(totalsellingprice) AS Total_revenue
FROM othoba_sales
WHERE FinalOrderStatus = 'Sales';


SELECT SUM(totalsellingprice) AS Total_revenue
FROM othoba_sales
WHERE FinalOrderStatus = 'Sales' and Year='2024';

SELECT SUM(totalsellingprice) AS Total_revenue
FROM othoba_sales
WHERE FinalOrderStatus = 'Sales' and Year='2023';

####Best-Performing Product Category

SELECT CATEGORY, SUM(totalsellingprice) AS TOTAL_REV
FROM othoba_sales
WHERE B2C_B2B = 'Others'
GROUP BY category
ORDER BY TOTAL_REV DESC;



####Top10 Customers by Spending


SELECT mobilenumber, sum(totalsellingprice) as total_spent
from othoba_sales 
WHERE B2C_B2B = 'Others' AND FinalOrderStatus = 'Sales'
GROUP BY mobilenumber
ORDER BY  total_spent DESC
LIMIT 5;


###Repeat_Customer_Rate

SELECT 
    (COUNT(DISTINCT CASE WHEN order_count > 1 THEN mobilenumber END) * 100.0 / COUNT(DISTINCT mobilenumber)) AS repeat_customer_rate
FROM (
    SELECT mobilenumber, COUNT(SubOrderId) AS order_count
    FROM othoba_sales
    GROUP BY mobilenumber
) AS customer_orders;



####What is the most popular order time (hour of the day)?


SELECT EXTRACT(HOUR FROM OrderCreatedOn) AS order_hour, COUNT(SubOrderId) AS order_count  
FROM othoba_sales where Year='2024'  
GROUP BY order_hour  
ORDER BY order_count DESC  
LIMIT 5;

###sales day of the week

SELECT day_of_week, total_sales
FROM (
    SELECT TO_CHAR(OrderCreatedOn, 'Day') AS day_of_week, SUM(totalsellingprice) AS total_sales
    FROM othoba_sales
    GROUP BY day_of_week
) AS subquery
ORDER BY 
  CASE 
    WHEN day_of_week = 'Monday' THEN 1
    WHEN day_of_week = 'Tuesday' THEN 2
    WHEN day_of_week = 'Wednesday' THEN 3
    WHEN day_of_week = 'Thursday' THEN 4
    WHEN day_of_week = 'Friday' THEN 5
    WHEN day_of_week = 'Saturday' THEN 6
    WHEN day_of_week = 'Sunday' THEN 7
  END;

#####Revenue Over Time


SELECT OrderCreatedOn,
       SUM(total_price) OVER (ORDER BY OrderCreatedOn) AS cumulative_revenue
FROM (
     SELECT OrderCreatedOn, SUM(totalsellingprice) AS total_price
     FROM othoba_sales WHERE 
     GROUP BY OrderCreatedOn
) AS daily_sales
ORDER BY OrderCreatedOn DESC;


##Ranking Top Products by Revenue within Categories

WITH ranked_products AS (
     SELECT category, ProductName, SUM(totalsellingprice) AS revenue,
            RANK() OVER (PARTITION BY category ORDER BY SUM(totalsellingprice) DESC) AS rank
     FROM othoba_sales
     GROUP BY category, ProductName
)
SELECT category, ProductName, revenue
FROM ranked_products
WHERE rank <= 3;


#RankingTopProductsbyQuantitywithinCategories

WITH ranked_products AS (
    SELECT category, ProductName, COUNT( Quantity) AS unit,
           RANK() OVER (PARTITION BY category ORDER BY COUNT(Quantity) DESC) AS rank
    FROM othoba_sales
    GROUP BY category, ProductName
)
SELECT category, ProductName, unit
FROM ranked_products
WHERE rank <= 3;

with ranked_products AS (SELECT category, ProductName, Count(DISTINCT Quantity) as unit,
RANK() OVER (PARTITION BY category ORDER BY Count(Quantity) DESC) AS RANK
FROM othoba_Sales
GROUP BY category, ProductName)
SELECT category, ProductName, Quantity
FROM ranked_products
WHERE rank <= 3;























