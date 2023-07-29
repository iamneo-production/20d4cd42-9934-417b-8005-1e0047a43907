--TELECOM SERVICE PROVIDER 

--Retrieving all data from table
SELECT * FROM TELECOM_CUSTOMER;

--1. SQL Query to list customer names who are using product 'Digital subscriber line'
SELECT "Customer Name" 
FROM TELECOM_CUSTOMER
WHERE PRODUCT = 'Digital Subscriber Line';

--2. SQL Query to list customer id, customer name whose name starts with 'sa' 
SELECT CUSTOMERID,"Customer Name" 
FROM TELECOM_CUSTOMER
WHERE "Customer Name" LIKE 'sa%';

--3. SQL Query to list customer ids and names for customers belonging to the gold customer segment 
SELECT CUSTOMERID,"Customer Name" 
FROM TELECOM_CUSTOMER 
WHERE "Customer Segment" = 'Gold';
--This above query gives output as 'no rows selected' because "Gold segment" is not present in customer segment field 
--As the 'Gold segment' is provided in service segment field the below query gives result 
SELECT CUSTOMERID,"Customer Name" 
FROM TELECOM_CUSTOMER 
WHERE "Service Segment" = 'Gold';

--4. SQL Query to count the customer list product wise 
SELECT PRODUCT,count(*) AS Customers_Count
FROM TELECOM_CUSTOMER GROUP BY PRODUCT;

--5. SQL Query to list the customer name of zone 'Mountain' 
SELECT "Customer Name" FROM TELECOM_CUSTOMER
WHERE ZONE = 'Mountain' ;
