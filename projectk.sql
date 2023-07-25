SELECT * FROM TELECOM;

SELECT "Customer Name" FROM TELECOM 
WHERE PRODUCT = 'Digital Subscriber Line';

SELECT CUSTOMERID,"Customer Name" FROM TELECOM 
WHERE "Customer Name" LIKE 'sa%';

SELECT CUSTOMERID,"Customer Name" 
FROM TELECOM WHERE "Service Segment" = 'Gold';

SELECT PRODUCT,count(*) AS Customers_Count
FROM TELECOM GROUP BY PRODUCT;
 
SELECT "Customer Name" FROM TELECOM
WHERE ZONE = 'Mountain' ;
