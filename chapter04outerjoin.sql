select C.cust_name,C.cust_contact
from Customers as C,Orders as O,OrderItems as OI
where C.cust_id=O.cust_id and OI.order_num = O.order_num and prod_id = 'RGAN01'
;
/*
# cust_name, cust_contact
Fun4All, Denise L. Stephens
The Toy Store, Kim Howard
*/

select Customers.cust_id,Customers.cust_name,Customers.cust_contact
from Customers
where Customers.cust_name in (
	select cust_name
    from Customers
    where cust_contact = 'Jim Jones'
);
/*
# cust_id, cust_name, cust_contact
1000000003, Fun4All, Jim Jones
1000000004, Fun4All, Denise L. Stephens
*/

select C1.cust_id,C1.cust_name,C1.cust_contact
from Customers as C1,Customers as C2
where C1.cust_name = C2.cust_name and C2.cust_contact = 'Jim Jones'
/*
# cust_id, cust_name, cust_contact
1000000003, Fun4All, Jim Jones
1000000004, Fun4All, Denise L. Stephens
*/
;

select C.*,O.order_num,O.order_date,OI.prod_id,OI.quantity,OI.item_price
from Customers as C,Orders as O,OrderItems as OI
where C.cust_id = O.cust_id and O.order_num = OI.order_num and OI.prod_id='RGAN01';
/*
'1000000004','Fun4All','829 Riverside Drive','Phoenix','AZ','88888','USA','Denise L. Stephens','dstephens@fun4all.com','20007','2012-01-30 00:00:00','RGAN01','50','4.49'
'1000000005','The Toy Store','4545 53rd Street','Chicago','IL','54545','USA','Kim Howard',NULL,'20008','2012-02-03 00:00:00','RGAN01','5','4.99'
*/
;

select Customers.cust_id,Customers.cust_name,Orders.order_num
from Customers , Orders
where Customers.cust_id = Orders.cust_id
;
/*
# cust_id, cust_name, order_num
1000000001, Village Toys, 20005
1000000001, Village Toys, 20009
1000000003, Fun4All, 20006
1000000004, Fun4All, 20007
1000000005, The Toy Store, 20008
*/


select Customers.cust_id,Customers.cust_name,Orders.order_num
from Customers inner join Orders
where Customers.cust_id = Orders.cust_id
;
/*
# cust_id, cust_name, order_num
1000000001, Village Toys, 20005
1000000001, Village Toys, 20009
1000000003, Fun4All, 20006
1000000004, Fun4All, 20007
1000000005, The Toy Store, 20008
*/

select Customers.cust_id,Customers.cust_name,Orders.order_num
from Customers inner join Orders
on Customers.cust_id = Orders.cust_id
;
/*
# cust_id, cust_name, order_num
1000000001, Village Toys, 20005
1000000001, Village Toys, 20009
1000000003, Fun4All, 20006
1000000004, Fun4All, 20007
1000000005, The Toy Store, 20008
*/

select Customers.cust_id,Customers.cust_name,Orders.order_num
from Customers left outer join Orders
on Customers.cust_id = Orders.cust_id
;
/*
'1000000001','Village Toys','20005'
'1000000001','Village Toys','20009'
'1000000002','Kids Place',NULL
'1000000003','Fun4All','20006'
'1000000004','Fun4All','20007'
'1000000005','The Toy Store','20008'
*/

select Customers.cust_id,Customers.cust_name,Orders.order_num
from Customers right outer join Orders
on Customers.cust_id = Orders.cust_id
;
/*
# cust_id, cust_name, order_num
1000000001, Village Toys, 20005
1000000001, Village Toys, 20009
1000000003, Fun4All, 20006
1000000004, Fun4All, 20007
1000000005, The Toy Store, 20008
*/

select Customers.cust_id,Customers.cust_name,count(Orders.order_num) as nums
from Customers left outer join Orders
on Customers.cust_id = Orders.cust_id
group by Customers.cust_id
;
/*
# cust_id, cust_name, nums
1000000001, Village Toys, 2
1000000002, Kids Place, 0
1000000003, Fun4All, 1
1000000004, Fun4All, 1
1000000005, The Toy Store, 1

*/


