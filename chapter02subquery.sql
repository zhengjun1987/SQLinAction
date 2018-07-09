-- 完成查询任务所需要进行的三个简单查询： 
select OrderItems.order_num
from OrderItems
where prod_id in ('RGAN01')
;

select Orders.cust_id
from Orders
where order_num in ('20007','20008')
;

select *
from Customers
where cust_id in ('1000000004','1000000005')
;

-- 将上述三个查询合并成一个查询：

select *
from Customers
where cust_id in (
	select Orders.cust_id
    from Orders
    where order_num in (
		select OrderItems.order_num
        from OrderItems
        where prod_id in ('RGAN01')
    )
) 
;
/*
# cust_id, cust_name, cust_address, cust_city, cust_state, cust_zip, cust_country, cust_contact, cust_email
1000000004, Fun4All, 829 Riverside Drive, Phoenix, AZ, 88888, USA, Denise L. Stephens, dstephens@fun4all.com
1000000005, The Toy Store, 4545 53rd Street, Chicago, IL, 54545, USA, Kim Howard, 
*/

select Customers.cust_name,Customers.cust_state,(
	select count(*)
    from Orders
    where Orders.cust_id = Customers.cust_id
    ) as orders
from Customers
group by cust_id
/*
Village Toys	MI	2
Kids Place	OH	0
Fun4All	IN	1
Fun4All	AZ	1
The Toy Store	IL	1
*/