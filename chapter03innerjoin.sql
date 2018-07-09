select vend_name,prod_name,prod_price
from Vendors,Products
where Vendors.vend_id = Products.vend_id;

select vend_name,prod_name,prod_price
from Vendors inner join Products
on Vendors.vend_id = Products.vend_id;

select Orders.order_num,Products.prod_name,Vendors.vend_name,Products.prod_price,OrderItems.quantity
from Products,Vendors,OrderItems,Orders
where Products.vend_id = Vendors.vend_id and Products.prod_id = OrderItems.prod_id and OrderItems.order_num=Orders.order_num;