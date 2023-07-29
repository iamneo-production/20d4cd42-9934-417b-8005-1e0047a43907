--TELECOM SERVICE PROVIDER

--(1) Query to list customer names who are using product Digital Subscriber Line
select "Customer Name"
from TELECOM_CUSTOMER
where product='Digital Subscriber Line';

--(2) Query to list customer id, customer name whose name starts with 'sa'
select CUSTOMERID, "Customer Name"
from TELECOM_CUSTOMER
where "Customer Name" like 'sa%';

--(3) Query to list customer id and names for customers belonging to the gold customer segment
select CUSTOMERID, "Customer Name"
from TELECOM_CUSTOMER
where "Customer Segment"='Gold';
--The output of above query is "no rows selected" because "Gold segment" is not present in field customer segment
--As the "Gold segment" is provided in service segment field
select CUSTOMERID, "Customer Name"
from TELECOM_CUSTOMER
where "Service Segment"='Gold';

--(4) Query to count the customer list product-wise
select product, count(*) as customer_count
from TELECOM_CUSTOMER
group by product;

--(5) Query to list the customer name of zone 'Mountain'
select "Customer Name"
from TELECOM_CUSTOMER
where zone='Mountain';
