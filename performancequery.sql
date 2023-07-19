select * from TELECOM;

SELECT "Customer Name" FROM TELECOM WHERE PRODUCT = 'Digital Subscriber Line' ;

SELECT CUSTOMERID,"Customer Name" FROM TELECOM WHERE "Customer Name" LIKE 'Sa%' ;

SELECT CUSTOMERID,"Customer Name" FROM TELECOM WHERE "Service Segment" = 'Gold' ;

SELECT PRODUCT,count(*) AS Customers_Count FROM TELECOM group by PRODUCT;

SELECT "Customer Name" FROM TELECOM WHERE ZONE = 'Mountain' ;