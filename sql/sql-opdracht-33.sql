-- Create a report that shows the SupplierID, CompanyName, 
-- CategoryName, ProductName and UnitPrice from the products, 
-- suppliers and categories table.

SELECT categories.CategoryID, 
    categories.CategoryName,
    products.SupplierID,
    products.ProductName,  
    products.UnitPrice,
    suppliers.CompanyName
FROM categories
LEFT JOIN products 
ON categories.CategoryID = products.CategoryID
LEFT JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID

UNION

SELECT categories.CategoryID, 
    categories.CategoryName,
    products.SupplierID,
    products.ProductName,  
    products.UnitPrice,
    suppliers.CompanyName
FROM categories
RIGHT JOIN products 
ON categories.CategoryID = products.CategoryID
RIGHT JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID