-- Create a select statement that outputs the following:

-- Contactinfo
-- Nancy Davolio can be reached at x5467
-- Andrew Fuller can be reached at x3457
-- Jannett Leverling can be reached at x3355
-- Margaret Peacock can be reached at x5176
-- Steven Buchanan can be reached at x3453
-- Michael Suyama can be reached at x428
-- Robert King can be reached at x465
-- Laura Callahan can be reached at x2344
-- Anne Dodsworth can be reached at x452

SELECT CONCAT (FirstName, " ", LastName, "can be reached at x", Extension)
AS Contactinfo
FROM employees
ORDER BY EmployeeID