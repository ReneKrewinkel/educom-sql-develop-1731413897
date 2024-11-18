-- Create a report that fetch the first 5 character 
-- of categoryName from the category tables and 
-- renamed as ShortInfo

SELECT LEFT(CategoryName, 5) AS ShortInfo
FROM categories