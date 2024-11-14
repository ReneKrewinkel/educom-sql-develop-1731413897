-- Create a report that shows the ProductName, UnitsInStock, 
-- UnitsOnOrder, ReorderLevel of all products that are up for 
-- reorder.

SELECT *
FROM `products`
WHERE NOT ReorderLevel = 0
