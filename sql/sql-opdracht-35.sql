-- Create a report that shows the OrderID, ContactName, 
-- UnitPrice, Quantity, Discount from the order details, orders 
-- and customers table with discount given on every purchase.

SELECT customers.ContactName, 
    customers.CustomerID, 
    order_details.Discount, 
    order_details.OrderID,
    order_details.Quantity,
    order_details.UnitPrice
FROM customers
LEFT JOIN orders 
ON customers.CustomerID = orders.CustomerID
LEFT JOIN order_details 
ON orders.OrderID = order_details.OrderID

UNION

SELECT customers.ContactName, 
    customers.CustomerID, 
    order_details.Discount, 
    order_details.OrderID,
    order_details.Quantity,
    order_details.UnitPrice
FROM customers
RIGHT JOIN orders 
ON customers.CustomerID = orders.CustomerID
RIGHT JOIN order_details 
ON orders.OrderID = order_details.OrderID