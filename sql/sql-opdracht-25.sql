-- Create a report that shows the SupplierID, ProductName, 
-- CompanyName from all product Supplied by Exotic Liquids, 
-- Specialty Biscuits, Ltd., Escargots Nouveaux sorted by the 
-- supplier ID

SELECT products.SupplierID, ProductName, CompanyName 
FROM products 
INNER JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID 
ORDER BY products.SupplierID ASC;
