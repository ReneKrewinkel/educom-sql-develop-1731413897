-- Create a copy of the shipper table as shippers_
-- duplicate. Then insert a copy of shippers data 
-- into the new table HINT: Create a Table, use the 
-- LIKE Statement and INSERT INTO statement.

CREATE TABLE shippers_duplicate AS
SELECT *
FROM shippers