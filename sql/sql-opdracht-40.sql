-- Create a view named ProductDetails that shows the
-- ProductID, CompanyName, ProductName, CategoryName,
-- Description, QuantityPerUnit, UnitPrice, UnitsIn-
-- Stock, UnitsOnOrder, ReorderLevel, Discontinued 
-- from the supplier, products and categories tables. 
-- HINT: Create a View

CREATE VIEW ProductDetails AS
SELECT categories.CategoryID,
    products.SupplierID,
    CategoryName,
    CompanyName,
    Description,
    Discontinued,
    ProductID,
    ProductName,
    QuantityPerUnit,
    ReorderLevel,
    UnitPrice,
    UnitsInStock
FROM categories
LEFT JOIN products 
ON categories.CategoryID = products.CategoryID
LEFT JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID

UNION

SELECT categories.CategoryID,
    products.SupplierID,
    CategoryName,
    CompanyName,
    Description,
    Discontinued,
    ProductID,
    ProductName,
    QuantityPerUnit,
    ReorderLevel,
    UnitPrice,
    UnitsInStock
FROM categories
RIGHT JOIN products 
ON categories.CategoryID = products.CategoryID
RIGHT JOIN suppliers 
ON products.SupplierID = suppliers.SupplierID