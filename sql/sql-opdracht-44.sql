-- Create a select statement that outputs the 
-- following from the shippers_duplicate Table:

-- ShipperID    CompanyName         Phone           Email
-- 1            Speedy Express      (503) 555-9831  speedyexpress@gmail.com
-- 2            United Package      (503) 555-3199  unitedpackage@gmail.com
-- 3            Federal Shipping    (503) 555-9931  federalshipping@gmail.com
-- null         null                null            null

ALTER TABLE shippers_duplicate
ADD COLUMN Email VARCHAR(255);

UPDATE shippers_duplicate
SET Email = CONCAT(REPLACE(CompanyName, ' ', ''), '@gmail.com');
