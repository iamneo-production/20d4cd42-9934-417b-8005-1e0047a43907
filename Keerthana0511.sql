--TELECOM_SERVICE_PROVIDER QUERIES

--1. Query to find the list of customer names who are using the product "Digital Subscriber Line"
SELECT "Customer Name"
FROM TELECOM_CUSTOMER
WHERE PRODUCT='Digital Subscriber Line';


--2. Query to list a Customer id, Customer name whose name starts with 'sa'.
SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Customer Name" LIKE 'SA%';


--3. Query to list the Customer IDs and names of customers  belonging to "Gold Customer Segment"
SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Customer Segment"='Gold';
--The output for the above query is "No rows selected* because Gold is presented in service segment not customer segment.

--Gold segment is presented in Service Segment field.
SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Service Segment"='Gold';


--4. Query to count the customer list product wise
SELECT PRODUCT, COUNT(*) AS CUSTOMER_COUNT
FROM TELECOM_CUSTOMER
GROUP BY PRODUCT;


--5. Query to list the customer name of zone "Mountain"
SELECT "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "ZONE"='Mountain';