-- Create a report that shows the FirstName, LastName, BirthDate
-- of employees born in the 1950s.

SELECT FirstName, LastName, BirthDate
FROM `employees`
WHERE BirthDate LIKE '1950%'