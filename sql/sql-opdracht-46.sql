-- Create a report that shows the CategoryID, 
-- CompanyName and ProductName from all product in 
-- the categoryID 5.

SELECT products.CategoryID, 
    suppliers.CompanyName,
    products.ProductName
FROM products
LEFT JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID
WHERE products.CategoryID = 5

UNION

SELECT products.CategoryID, 
    suppliers.CompanyName,
    products.ProductName
FROM products
RIGHT JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID
WHERE products.CategoryID = 5
