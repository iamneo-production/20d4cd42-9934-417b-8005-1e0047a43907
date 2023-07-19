select * from TELECOM_CUSTOMER;

select "Customer Name" from TELECOM_CUSTOMER where PRODUCT = 'Digital Subscriber Line' ;

select CUSTOMERID,"Customer Name" from TELECOM_CUSTOMER where "Customer Name" like 'Sa%' ;

select CUSTOMERID,"Customer Name" from TELECOM_CUSTOMER where "Service Segment" = 'Gold' ;

select product,count(*) as Customers_Count from TELECOM_CUSTOMER group by product;

select "Customer Name" from TELECOM_CUSTOMER where "ZONE"='Mountain';