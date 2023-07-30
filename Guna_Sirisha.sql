--1. Find the customer's name who is all using the product Digital Subsriber Line ? 
    SELECT "Customer Name" 
    from TELECOM_CUSTOMER
    WHERE PRODUCT='Digital Subscriber Line';

--2. List Customer id, customer name whose name starts with 'sa'?
    SELECT CUSTOMERID, "Customer Name"
    from TELECOM_CUSTOMER
    WHERE "Customer Name" LIKE 'sa%';

--3. List the customer id, customer name of the gold customer segment?
--Here the the customer segment column value is consumer or  business . 
--  Hence the output will be no rows selected
    SELECT  CUSTOMERID,"Customer Name"
    from TELECOM_CUSTOMER
    WHERE "Customer Segment"='Gold';

--The gold is related to service segment hence used service segment

    SELECT  CUSTOMERID,"Customer Name"
    from TELECOM_CUSTOMER
    WHERE "Service Segment"='Gold';

--4. Count the customer list product-wise?
    SELECT PRODUCT, COUNT(*)
    AS CUSTOMER_COUNT
    FROM TELECOM_CUSTOMER
    GROUP BY PRODUCT;

--5. List the customer name of the zone 'Mountain'?
    SELECT CUSTOMERID, "Customer Name"
    from TELECOM_CUSTOMER
    WHERE ZONE='Mountain';

