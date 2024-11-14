-- Create a report that shows the FirstName, LastName, the year 
-- of Birthdate as birth year from the employees table.

SELECT FirstName, LastName, YEAR(Birthdate) as 'birth year'
FROM `employees`
