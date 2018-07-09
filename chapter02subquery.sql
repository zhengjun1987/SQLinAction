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

select Customers.cust_name,Customers.cust_state,(
	select count(*)
    from Orders
    where Orders.cust_id = Customers.cust_id
    ) as orders
from Customers
group by cust_id