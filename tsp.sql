SELECT "Customer Name"
FROM TELECOM_CUSTOMER
WHERE PRODUCT = 'Digital Subscriber Line';

SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Customer Name" LIKE 'sa%';

SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Customer Segment" = 'Gold';
/* The above query is not giving any result so using 'Service Segment' column*/
SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Service Segment" = 'Gold';

SELECT PRODUCT, COUNT(*) as CUSTOMER_COUNT
FROM TELECOM_CUSTOMER
GROUP BY PRODUCT;

SELECT "Customer Name"
FROM TELECOM_CUSTOMER
WHERE ZONE = 'Mountain';