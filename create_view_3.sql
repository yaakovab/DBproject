CREATE OR REPLACE  VIEW view_cars_reseve_today AS
SELECT *
FROM reservation c
WHERE c.reservationdate =current_date 
