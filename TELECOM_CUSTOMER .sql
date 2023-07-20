/* TELECOM_SERVICE_PROVIDER */

/* Retrieving all the data from the table telecom_customer */
select * from TELECOM_CUSTOMER;

/* (1)Query to list the customer names who are using the product Digital Subscriber Line CUSTOMER_ID*/
SELECT "Customer Name"
FROM TELECOM_CUSTOMER
WHERE PRODUCT = 'Digital Subscriber Line';

/* (2)Query to list the customer id,customer name whose name starts with 'sa' */
SELECT CUSTOMERID,"Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Customer Name" LIKE 'SA%';

/* (3)Query to list the customer id's and names for customers belonging to the gold customer segment */
SELECT CUSTOMERID,"Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Customer Segment" = 'Gold';
/* The output of the above query is "no rows selected" because "Gold segment" is not present in the field customer segment*/

/*The "Gold segment" is provided in the service segment field.So I do this query to get an output */
SELECT CUSTOMERID,"Customer Name"
FROM TELECOM_CUSTOMER
WHERE "Service Segment" = 'Gold';

/* (4)Query to count the customer list product wise */
SELECT PRODUCT,COUNT(*) AS customer_count
FROM TELECOM_CUSTOMER
group BY PRODUCT;

/* (5)Query to list the customer name of zone 'Mountain' */
SELECT "Customer Name"
FROM TELECOM_CUSTOMER
where "ZONE" = 'Mountain';

