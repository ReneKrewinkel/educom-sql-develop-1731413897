-- Create a report that the CompanyName and total 
-- number of orders by customer renamed as number of
-- orders since Decemeber 31, 1994. Show number of 
-- Orders greater than 10.

SELECT customers.CompanyName,
    COUNT(customers.CustomerID) as 'number of orders since December 31, 1994'
FROM customers
LEFT JOIN orders 
ON customers.CustomerID = orders.CustomerID
GROUP BY customers.CustomerID
HAVING COUNT(customers.CustomerID) > 10

UNION 

SELECT customers.CompanyName,
    COUNT(customers.CustomerID) as 'number of orders since December 31, 1994'
FROM customers
RIGHT JOIN orders 
ON customers.CustomerID = orders.CustomerID
GROUP BY customers.CustomerID
HAVING COUNT(customers.CustomerID) > 10