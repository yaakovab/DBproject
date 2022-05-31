create or replace procedure get_max_res_month (monthtosearch in number)as
ordamount number :=0;

cursor ord_month is 
         SELECT EXTRACT(month FROM reservation.reservationdate) "Month",
         COUNT(reservation.reservationdate) "No. of Orders"
         FROM reservation
         GROUP BY EXTRACT(month FROM reservation.reservationdate)
         ORDER BY "No. of Orders" DESC;

         s1 ord_month%rowtype;
begin
           open ord_month;
           loop
             fetch ord_month into s1;
             exit when ord_month%notfound;
             if (s1.month = monthstosearch)
               then ordamount s1."no. of orders";end if;
           end loop;  
           close   ord_month  ;
           
           dbms_output.put_line('sum of orders bei made in this month is: '||ordamount );
           
           end;

end;
