-- Change the name of the view you created from 
-- customerinfo to customer details.

DROP VIEW CustomerInfo;

CREATE VIEW `customer details` AS
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