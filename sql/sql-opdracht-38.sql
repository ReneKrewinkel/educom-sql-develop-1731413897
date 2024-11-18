-- Create a view named CustomerInfo that shows the CustomerID, 
-- CompanyName, ContactName, ContactTitle, Address, City, Country, 
-- Phone, OrderDate, RequiredDate, ShippedDate from the customers 
-- and orders table. 
-- HINT: Create a View.

CREATE VIEW CustomerInfo AS
SELECT customers.CustomerID,
    Address,
    City,
    CompanyName,
    ContactName,
    ContactTitle,
    Country,
    OrderDate,
    Phone,
    RequiredDate,
    ShippedDate
FROM customers
LEFT JOIN orders
ON customers.CustomerID = orders.CustomerID