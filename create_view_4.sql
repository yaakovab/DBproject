CREATE OR REPLACE  VIEW view_res_this_month AS
SELECT c.clientid
FROM reservation r inner join client c
on c.clientid= r.clientid 
WHERE r.reservationdate > current_date - 30;
