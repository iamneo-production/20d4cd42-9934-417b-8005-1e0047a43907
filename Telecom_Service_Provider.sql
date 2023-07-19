/*TELECOME_SERVICE_PROVIDER*/

/* Retrieving all the data from the table telecom_customer*/
select * from TELECOM_CUSTOMER;

/* (1) Query to list of customer names who are using the product Digital Subscriber Line */
select "Customer Name" from TELECOM_CUSTOMER
where PRODUCT = 'Digital Subscriber Line';

/* (2) Query to list customer id,customer name whose name starts with 'sa' */
select CUSTOMERID, "Customer Name"
from TELECOM_CUSTOMER
where "Customer Name" LIKE 'SA%';

/* (3) Query to list customer id's and names for customers belonging to the gold customer segment */
select CUSTOMERID, "Customer Name"
from TELECOM_CUSTOMER
where "Customer Segment" = 'Gold';
/* The output of above query is "no rows selected" because "Gold segment" is not present in field customer segment */
/* As the "Gold segment" is provided in service segment field . i am writing below query to give correct output */
select CUSTOMERID, "Customer Name"
from TELECOM_CUSTOMER
where "Service Segment" = 'Gold';

/* (4) Query to count the customer list product-wise */
select PRODUCT,COUNT(*) AS CUSTOMER_COUNT
FROM TELECOM_CUSTOMER
GROUP BY PRODUCT;

/* (5) Query to list the customer name of zone 'Mountain' */
select "Customer Name" from TELECOM_CUSTOMER
where "ZONE" = 'Mountain'