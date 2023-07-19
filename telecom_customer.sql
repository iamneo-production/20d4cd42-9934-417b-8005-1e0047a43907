/*TELECOM_SERVICE_PROVIDER*/

/*Retrieving the whole data from the telecom_customer_table*/
select * from  TELECOM_CUSTOMER;

/*(1) Query to list customer names who are using product Digital Subscriber Line*/
select "Customer Name"
from TELECOM_CUSTOMER
where product='Digital Subscriber Line';

/**/
select CUSTOMERID, "Customer Name"
from TELECOM_CUSTOMER
where "Customer Name" like 'sa%';

/**/
select CUSTOMERID, "Customer Name"
from TELECOM_CUSTOMER
where "Customer Segment"='Gold';

select product, count(*) as customer_count
from TELECOM_CUSTOMER
group by product;

select "Customer Name"
from TELECOM_CUSTOMER
where zone='Mountain';