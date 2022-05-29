CREATE OR REPLACE  VIEW view_cars_of_company AS
SELECT branchid, carid
FROM car c
WHERE c.isactive =1 
order by c.branchid
