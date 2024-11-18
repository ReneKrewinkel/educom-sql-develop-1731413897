-- Create a report that shows the EmployeeID, the LastName and 
-- FirstName as employee, and the LastName and FirstName of who 
-- they report to as manager from the employees table sorted by 
-- Employee ID. 
-- HINT: This is a SelfJoin.

SELECT 
    med_med.EmployeeID, 
    CONCAT(med_med.FirstName, ' ', med_med.LastName) AS employees,
    CONCAT(med_man.FirstName, ' ', med_man.LastName) AS manager
FROM 
    Employees med_med
LEFT JOIN
    Employees med_man
ON
    med_med.ReportsTo = med_man.EmployeeID
ORDER BY med_med.EmployeeID

-- Reports to is to the employeeID