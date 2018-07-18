create table Products1(
	pro_id	char(10)	not null,
	vend_id	char(10)	not null,
	pro_name	char(254)	not null,
	pro_price	decimal(8,2)	not null,
	pro_desc	text(1000)	null
);

select * 
into Products1
from Products;

insert into Products1
select * 
from Products;

create table Orders1(
	order_num	integer		not null,
	order_date	datetime	not null	default current_timestamp,
	cust_id		char(10)	not null
);

create table Vendors1(
	vend_id			char(10)	not null,
	vend_name		char(50)	not null,
	vend_address	char(50)	 	null,
	vend_city		char(50)	 	null,
	vend_state		char(5)	 		null,
	vend_zip		char(10)	 	null,
	vend_country	char(50) 		null
);

create table OrderItems1(
	order_num	integer		not null,
	order_item	integer		not null,
	prod_id		char(10)	not null,
	quantity	integer		not null	default 1,
	item_price	decimal(8,2)		not null
);

alter table Vendors1
add vend_phone char(20);

alter table Products1
add prod_qr1 char(20) default '1' auto_increment;

alter table Vendors1
drop column vend_phone;

alter table Products1
drop column prod_qr;
-- 
-- alter table Vendors
-- add _id int auto_increment default 1;

drop table Products1;

drop table OrderItems1;

drop table Orders1;

rename table Vendors1 to VendorsCopy;