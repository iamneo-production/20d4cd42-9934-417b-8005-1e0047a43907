select * from telecom

select 'customer_name'
from telecom
where product='Digital Subscriber Line';

select CUSTOMERID, "Customer Name"
from TELECOM
where "Customer Name"like 'sa%';

select CUSTOMERID, "Customer Name"
from TELECOM
where "Customer Segment"='gold customer segment';

select product, count(*) as customer_count
from TELECOM
group by product;

select "Customer Name"
from telecom
where zone='Mountain';