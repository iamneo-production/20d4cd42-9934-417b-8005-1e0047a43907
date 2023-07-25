/* CREATING PROCEDURES FOR BETTER PERFORMANCE OPTIMIZATION*/

/* 1. SQL Query to list customer names who are using product 'Digital subscriber line'*/
create or replace PROCEDURE telecomcustomerproduct
as
BEGIN
   for i in ( select "Customer Name" 
    from TELECOM_CUSTOMER
    where product = 'Digital Subscriber Line')
    loop
    dbms_output.put_line(i."Customer Name");
    end loop;
END;
/
BEGIN
telecomcustomerproduct();
END;
/

/* finding time complexity */
declare
t1 timestamp;
t2 timestamp;
begin
t1:=systimestamp;
dbms_output.put_line('start'||t1);
telecomcustomerproduct;
t2:=systimestamp;
dbms_output.put_line('end'||t2);
dbms_output.put_line('fractional seconds'||to_char(t2-t1,'SSSS.FF'));
END;
/*fractional seconds+000000 00:00:00.055122000*/

/* 2. SQL Query to list customer id, customer name whose name starts with 'sa' */
create or replace PROCEDURE telecomcustomername
as
BEGIN
   for i in (SELECT CUSTOMERID,"Customer Name" 
FROM TELECOM_CUSTOMER
WHERE "Customer Name" LIKE 'sa%')
    loop
    dbms_output.put_line(i.CUSTOMERID||'--->'||i."Customer Name");
    end loop;
END;
/
BEGIN
telecomcustomername();
END;
/

/* finding time complexity */
declare
t1 timestamp;
t2 timestamp;
begin
t1:=systimestamp;
dbms_output.put_line('start'||t1);
telecomcustomername;
t2:=systimestamp;
dbms_output.put_line('end'||t2);
dbms_output.put_line('fractional seconds'||to_char(t2-t1,'SSSS.FF'));
END;
/*fractional seconds +000000 00:00:00.001933000*/



/* 3. SQL Query to list customer ids and names for customers belonging to the gold customer segment */
create or replace PROCEDURE telecomcustomersegment
as
BEGIN
   for i in (SELECT CUSTOMERID,"Customer Name" 
FROM TELECOM_CUSTOMER 
WHERE "Customer Segment" = 'Gold')
    loop
    dbms_output.put_line(i.CUSTOMERID||'--->'||i."Customer Name");
    end loop;
END;
/
BEGIN
telecomcustomersegment();
END;
/

/* finding time complexity */
declare
t1 timestamp;
t2 timestamp;
begin
t1:=systimestamp;
dbms_output.put_line('start'||t1);
telecomcustomersegment;
t2:=systimestamp;
dbms_output.put_line('end'||t2);
dbms_output.put_line('fractional seconds'||to_char(t2-t1,'SSSS.FF'));
END;
/*fractional seconds +000000 00:00:00.011039000*/

/*This above query gives output as 'no rows selected' because "Gold segment" is not present in customer segment field */
/* As the 'Gold segment' is provided in service segment field the below query gives result */
create or replace PROCEDURE telecomservicesegment
as
BEGIN
   for i in (SELECT CUSTOMERID,"Customer Name" 
FROM TELECOM_CUSTOMER 
WHERE "Service Segment" = 'Gold')
    loop
    dbms_output.put_line(i.CUSTOMERID||'--->'||i."Customer Name");
    end loop;
END;
/
BEGIN
telecomservicesegment();
END;
/

/* finding time complexity */
declare
t1 timestamp;
t2 timestamp;
begin
t1:=systimestamp;
dbms_output.put_line('start'||t1);
telecomservicesegment;
t2:=systimestamp;
dbms_output.put_line('end'||t2);
dbms_output.put_line('fractional seconds'||to_char(t2-t1,'SSSS.FF'));
END;
/*fractional seconds+000000 00:00:00.049131000*/

/* 4. SQL Query to count the customer list product wise */
create or replace PROCEDURE telecomcount
as
BEGIN
   for i in (SELECT PRODUCT,count(*) AS Customers_Count
FROM TELECOM_CUSTOMER GROUP BY PRODUCT)
    loop
    dbms_output.put_line(i.PRODUCT||'--->'||i.Customers_Count);
    end loop;
END;
/
BEGIN
telecomcount();
END;
/

/* finding time complexity */
declare
t1 timestamp;
t2 timestamp;
begin
t1:=systimestamp;
dbms_output.put_line('start'||t1);
telecomcount;
t2:=systimestamp;
dbms_output.put_line('end'||t2);
dbms_output.put_line('fractional seconds'||to_char(t2-t1,'SSSS.FF'));
END;
/*fractional seconds +000000 00:00:00.011956000*/

/* 5. SQL Query to list the customer name of zone 'Mountain' */ 
create or replace PROCEDURE telecomzone
as
BEGIN
   for i in (SELECT "Customer Name" FROM TELECOM_CUSTOMER
WHERE ZONE = 'Mountain' )
    loop
    dbms_output.put_line(i."Customer Name");
    end loop;
END;
/
BEGIN
telecomzone();
END;
/

/* finding time complexity */
declare
t1 timestamp;
t2 timestamp;
begin
t1:=systimestamp;
dbms_output.put_line('start'||t1);
telecomzone;
t2:=systimestamp;
dbms_output.put_line('end'||t2);
dbms_output.put_line('fractional seconds'||to_char(t2-t1,'SSSS.FF'));
END;
/*fractional seconds+000000 00:00:00.031863000*/
