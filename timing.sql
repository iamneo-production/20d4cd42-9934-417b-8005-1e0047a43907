set timing on;
SELECT "Customer Name" 
FROM TELECOM_CUSTOMER
WHERE PRODUCT = 'Digital Subscriber Line';
set timing off;

set timing on;
SELECT CUSTOMERID,"Customer Name" 
FROM TELECOM_CUSTOMER
WHERE "Customer Name" LIKE 'sa%';
set timing off;

set timing on;
SELECT CUSTOMERID,"Customer Name" 
FROM TELECOM_CUSTOMER 
WHERE "Service Segment" = 'Gold';
set timing off;

DECLARE
v_start_time number;
v_end_time number;
v_execution_time_micros NUMBER;
v_m number;
v_n varchar2(30);

BEGIN
v_start_time := DBMS_UTILITY.GET_TIME;
SELECT CUSTOMERID,"Customer Name" into v_m,v_n
FROM TELECOM_CUSTOMER 
WHERE "Service Segment" = 'Gold';

v_end_time := DBMS_UTILITY.GET_TIME;
v_execution_time_micros := (v_end_time - v_start_time)*1000000;
dbms_output.put_line('Execution Time(microseconds):' || v_execution_time_micros);
END;
/

declare
t1 timestamp;
t2 timestamp;
begin
t1:=systimestamp;
dbms_output.put_line('start'||t1);
SELECT "Customer Name" 
FROM TELECOM_CUSTOMER
WHERE PRODUCT = 'Digital Subscriber Line';
t2:=systimestamp;
dbms_output.put_line('end'||t2);
dbms_output.put_line('fractional seconds'||to_char(t2-t1,'SSSS.FF'));
END;