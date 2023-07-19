/* Retrieving data from TELECOM_CUSTOMER table  */
select * from TELECOM_CUSTOMER;

/* (1) Query for displaying customer Names who are using the product Digital subscriber Line */
select "Customer Name" from TELECOM_CUSTOMER where PRODUCT = 'Digital Subscriber Line' ;

/* (2) Query to list Customer id's, Customer Names whose name starts with 'sa' */
select CUSTOMERID,"Customer Name" from TELECOM_CUSTOMER where "Customer Name" like 'Sa%' ;

/* (3) Query to list customer id's and customer names belonging to gold customer segment */
select CUSTOMERID,"Customer Name" from TELECOM_CUSTOMER where "Customer Segment" = 'Gold';
/* The output for above query gives as "no rows selected" because the Gold Segment is not present in the Customer Segment Column*/
/* as the Gold segment is provided in service segment*/

/* (3) Query to list  customer id's and customer names belonging to gold service segment */
select CUSTOMERID,"Customer Name" from TELECOM_CUSTOMER where "Service Segment" = 'Gold' ;

/* (4)  Query to count the customer list product-wise */
select product,count(*) as Customers_Count from TELECOM_CUSTOMER group by product;

/* (5) Query to list customer names belonging to mountain zone */ 
select "Customer Name" from TELECOM_CUSTOMER where "ZONE"='Mountain';

