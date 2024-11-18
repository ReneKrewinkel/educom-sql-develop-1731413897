-- Create a select statement that ouputs the 
-- following from the employees table. 

-- LastName     FirstName   Title                       Age
-- Davolio      Nancy       Sales Representative        72 Years
-- Fuller       Andrew      Vice President, Sales       68 Years
-- Leverling    Janet       Sales Representative        57 Years
-- Peacock      Margaret    Sales Representative        83 Years
-- Buchanan     Steven      Sales Manager               65 Years
-- Suyama       Michael     Sales Representative        57 Years
-- King         Robert      Sales Representative        60 Years
-- Callahan     Laura       Inside Sales Coordinator    62 Years
-- Dodsworth    Anne        Sales Representative        54 Years

-- NB: The age might differ depending on the year 
-- you are attempting this query.

SELECT LastName, 
    FirstName, 
    Title, 
    TIMESTAMPDIFF(YEAR, LEFT(BirthDate, 10), CURDATE()) AS Age
FROM employees