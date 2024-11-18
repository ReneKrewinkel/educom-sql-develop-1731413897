-- Create a report that shows the CompanyName and 
-- ProductName from all product in the Seafood 
-- category.

SELECT products.ProductName,
    suppliers.CompanyName
FROM categories
LEFT JOIN products 
ON categories.CategoryID = products.CategoryID
LEFT JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID
WHERE categories.CategoryName = 'Seafood'

UNION

SELECT products.ProductName,
    suppliers.CompanyName
FROM categories
RIGHT JOIN products 
ON categories.CategoryID = products.CategoryID
RIGHT JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID
WHERE categories.CategoryName = 'Seafood'
