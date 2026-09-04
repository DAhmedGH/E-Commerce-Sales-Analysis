-- 1. Top 5 Cities by Total Revenue
SELECT City, SUM(Sales) as Total_Sales
FROM SalesData
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 5;

-- 2. Subquery: Categories performing above the company average
SELECT Category, AVG(Sales) as Avg_Transaction_Value
FROM SalesData
GROUP BY Category
HAVING AVG(Sales) > (
    SELECT AVG(Sales) 
    FROM SalesData
);

-- 3. Yearly Revenue by Category
SELECT "Order Year", Category, SUM(Sales) as Total_Sales
FROM SalesData
GROUP BY "Order Year", Category
ORDER BY "Order Year" ASC, Total_Sales DESC;

-- 4. Order Segmentation Analysis
SELECT 
    CASE 
        WHEN Sales >= 1000 THEN 'High Value (>$1000)'
        WHEN Sales >= 100 THEN 'Medium Value ($100-$999)'
        ELSE 'Low Value (<$100)'
    END as Order_Category,
    COUNT(*) as Number_of_Orders,
    SUM(Sales) as Total_Revenue
FROM SalesData
GROUP BY Order_Category
ORDER BY Total_Revenue DESC;
