-- Create a report that shows the ContactName, ContactTitle, 
-- CompanyName of customers that the has no "Sales" in their 
-- ContactTitle.

SELECT ContactName, ContactTitle, CompanyName
FROM suppliers
WHERE ContactTitle NOT LIKE '%Sales%'