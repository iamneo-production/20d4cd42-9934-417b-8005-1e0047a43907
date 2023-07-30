--TELECOM_SERVICE_PROVIDER

-- (1) Query to list of customer names who are using the product Digital Subscriber Line */
SELECT "Customer Name"
FROM TELECOM_CUSTOMER
WHERE PRODUCT = 'Digital Subscriber Line';

-- (2) Query to list customer id, customer name whose name starts with 'sa' */
SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Customer Name" LIKE 'SA%';

-- (3) Query to list customer id's and names for customers belonging to the gold customer segment*/
SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Customer Segment" = 'Gold';
-- The output of above query is "no rows selected" because "Gold segment" is not present in field segment = gold
-- As the "Gold segment" is provided in service segment field*/
SELECT CUSTOMERID, "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Service Segment" = 'Gold';

-- (4) Query to count the customer list product-wise*/
SELECT PRODUCT, COUNT(*) AS CUSTOMER_COUNT
FROM TELECOM_CUSTOMER
GROUP BY PRODUCT;

-- (5) Query to list the customer name of zone 'Mountain*/
SELECT "Customer Name"
FROM TELECOM_CUSTOMER
WHERE "ZONE" = 'Mountain';
