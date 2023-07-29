--query 1
SELECT "Customer Name"
FROM TELECOM_CUSTOMER
WHERE PRODUCT = 'Digital Subscriber Line';

--query 2
SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Customer Name" LIKE 'SA%';

--query 3 (not working)
SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Customer Segment" = 'Gold';
/* The above query returned no rows selected because the customer segment col has no 'Gold' value */

--query 3 (working)
SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Service Segment" = 'Gold';

--query 4
SELECT PRODUCT, COUNT(*) AS CUSTOMER_COUNT
FROM TELECOM_CUSTOMER
GROUP BY PRODUCT;

--query 5
SELECT "Customer Name"
FROM TELECOM_CUSTOMER
WHERE Zone = 'Mountain';
