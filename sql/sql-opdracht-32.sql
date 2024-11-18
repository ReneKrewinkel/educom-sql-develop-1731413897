-- Create a report that shows the average UnitPrice rounded to 
-- the next whole number, total price of UnitsInStock and maximum
-- number of orders from the products table. All saved as 
-- AveragePrice, TotalStock and MaxOrder respectively.

SELECT CEIL(AVG(UnitPrice)) AS AveragePrice, 
    SUM(UnitsInStock) AS TotalStock, 
    MAX(UnitsOnOrder) AS MaxOrder
FROM products