insert into Customers
values (
	'1000000006',
	'Toy Land',
	'123 Any Street',
	'New York',
	'NY',
	'11111',
	'USA',
    null,
    null
);

insert into Customers(
	Customers.cust_id,
	Customers.cust_name,
	Customers.cust_address,
	Customers.cust_city,
	Customers.cust_state,
	Customers.cust_zip,
	Customers.cust_country,
	Customers.cust_contact,
	Customers.cust_email
)
values (
	'1000000007',
	'Toys Land',
	'125 Any Street',
	'New York',
	'NY',
	'11111',
	'USA',
    null,
    null
);

insert into Customers(
	Customers.cust_id,
	Customers.cust_contact,
	Customers.cust_email,
	Customers.cust_name,
	Customers.cust_address,
	Customers.cust_city,
	Customers.cust_state,
	Customers.cust_zip
)
values (
	'1000000008',
    null,
    null,
	'Player Land',
	'127 Any Street',
	'New York',
	'NY',
	'11111'
);

insert into CustCopy(
	cust_id,
	cust_name,
	cust_address,
	cust_city,
	cust_state,
	cust_zip,
	cust_country,
	cust_contact,
	cust_email
)
select cust_id,cust_name,cust_address,cust_city,cust_state,cust_zip,cust_country,cust_contact,cust_email
from Customers;

select *
into CustCopy
from Customers;

create table CustCopy as
select * 
from Customers;
