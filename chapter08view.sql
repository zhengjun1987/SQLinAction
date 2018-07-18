create view ProductsCustomers as
select cust_name,cust_contact,prod_id
from Customers,Orders,OrderItems
where Customers.cust_id=Orders.cust_id and Orders.order_num = OrderItems.order_num;

select cust_name,cust_contact
from ProductsCustomers
where prod_id = 'RGAN01';
/*
# cust_name, cust_contact
'Fun4All', 'Denise L. Stephens'
'The Toy Store', 'Kim Howard'
*/