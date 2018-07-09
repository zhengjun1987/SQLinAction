select vend_name,prod_name,prod_price
from Vendors,Products
where Vendors.vend_id = Products.vend_id;
/*
Doll House Inc.	Fish bean bag toy	3.49
Doll House Inc.	Bird bean bag toy	3.49
Doll House Inc.	Rabbit bean bag toy	3.49
Bears R Us	8 inch teddy bear	5.99
Bears R Us	12 inch teddy bear	8.99
Bears R Us	18 inch teddy bear	11.99
Doll House Inc.	Raggedy Ann	4.99
Fun and Games	King doll	9.49
Fun and Games	Queen doll	9.49

*/

select vend_name,prod_name,prod_price
from Vendors inner join Products
on Vendors.vend_id = Products.vend_id;
/*
# vend_name, prod_name, prod_price
Doll House Inc., Fish bean bag toy, 3.49
Doll House Inc., Bird bean bag toy, 3.49
Doll House Inc., Rabbit bean bag toy, 3.49
Bears R Us, 8 inch teddy bear, 5.99
Bears R Us, 12 inch teddy bear, 8.99
Bears R Us, 18 inch teddy bear, 11.99
Doll House Inc., Raggedy Ann, 4.99
Fun and Games, King doll, 9.49
Fun and Games, Queen doll, 9.49

*/

select Orders.order_num,Products.prod_name,Vendors.vend_name,Products.prod_price,OrderItems.quantity
from Products,Vendors,OrderItems,Orders
where Products.vend_id = Vendors.vend_id and Products.prod_id = OrderItems.prod_id and OrderItems.order_num=Orders.order_num;
/*
# order_num, prod_name, vend_name, prod_price, quantity
'20005', '8 inch teddy bear', 'Bears R Us', '5.99', '100'
'20005', '18 inch teddy bear', 'Bears R Us', '11.99', '100'
'20009', 'Fish bean bag toy', 'Doll House Inc.', '3.49', '250'
'20009', 'Bird bean bag toy', 'Doll House Inc.', '3.49', '250'
'20009', 'Rabbit bean bag toy', 'Doll House Inc.', '3.49', '250'
'20006', '8 inch teddy bear', 'Bears R Us', '5.99', '20'
'20006', '12 inch teddy bear', 'Bears R Us', '8.99', '10'
'20006', '18 inch teddy bear', 'Bears R Us', '11.99', '10'
'20007', '18 inch teddy bear', 'Bears R Us', '11.99', '50'
'20007', 'Fish bean bag toy', 'Doll House Inc.', '3.49', '100'
'20007', 'Bird bean bag toy', 'Doll House Inc.', '3.49', '100'
'20007', 'Rabbit bean bag toy', 'Doll House Inc.', '3.49', '100'
'20007', 'Raggedy Ann', 'Doll House Inc.', '4.99', '50'
'20008', 'Raggedy Ann', 'Doll House Inc.', '4.99', '5'
'20008', '18 inch teddy bear', 'Bears R Us', '11.99', '5'
'20008', 'Fish bean bag toy', 'Doll House Inc.', '3.49', '10'
'20008', 'Bird bean bag toy', 'Doll House Inc.', '3.49', '10'
'20008', 'Rabbit bean bag toy', 'Doll House Inc.', '3.49', '10'
*/