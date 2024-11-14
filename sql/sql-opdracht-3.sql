-- Create a report that shows the capitalized FirstName and 
-- capitalized LastName renamed as FirstName and Lastname 
-- respectively and HireDate from the employees table sorted 
-- from the newest to the oldest employee.

SELECT UPPER(FirstName) as FirstName, UPPER(LastName) as Lastname, HireDate
FROM `employees`
ORDER BY HireDate DESC
