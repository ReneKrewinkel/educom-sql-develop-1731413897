-- Create a report that shows the SupplierID, ProductName, 
-- CompanyName from all product Supplied by Exotic Liquids, 
-- Specialty Biscuits, Ltd., Escargots Nouveaux sorted by the 
-- supplier ID

SELECT products.SupplierID, ProductName, CompanyName 
FROM products 
LEFT JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID 

UNION

SELECT products.SupplierID, ProductName, CompanyName 
FROM products
RIGHT JOIN suppliers
ON products.SupplierID = suppliers.SupplierID

ORDER BY SupplierID ASC;