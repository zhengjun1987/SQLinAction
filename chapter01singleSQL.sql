# 块注释
# 第一个SQL语句学习
# 2018年07月05日01:04:40
select order_num,count(*) as items
from OrderItems
group by order_num
having items >= 3
order by items,order_num
;

select order_num,count(*) as items
from OrderItems
group by order_num
having items >= 3
;

select vend_id,count(*) as num_prods
from Products
group by vend_id
having num_prods >= 2
;

select vend_id,count(*) as num_prods
from Products
where prod_price > 4
group by vend_id
having num_prods >= 2
;

select cust_id,count(*) as orders
from Orders
group by cust_id
having orders >= 2
;

select vend_id,count(*) as num_prods
from Products
group by vend_id
;

select order_num,sum(OrderItems.quantity) as item_ordered
from OrderItems
group by order_num
;

select sum(OrderItems.quantity) as item_ordered
from OrderItems
where order_num = '20005'
;

select min(Products.prod_price) as min_price
from Products
;

select max(Products.prod_price) as max_price
from Products
;

select count(cust_email) as num_customers
from Customers
;

select count(*) as num_customers
from Customers
;

select avg(distinct prod_price) as avg_price
from Products
where vend_id = 'DLL01'
;

select avg(Products.prod_price) as avg_price
from Products
where vend_id = 'DLL01'
;

select avg(Products.prod_price) as avg_price
from Products
;

select * 
from Orders
where order_date between date('2012-01-01') and date('2012-12-31')
;

select * 
from Orders
where year(order_date)=2012
;

select cust_name,cust_contact
from Customers
where soundex(cust_contact) = soundex('Michael Green')
;

select Vendors.vend_name,Vendors.vend_id,upper(Vendors.vend_name) as vend_name_upper
from Vendors
;

select vend_id,now() as date1,vend_name
from Vendors
;

select prod_id,quantity,item_price,quantity*item_price as expanded_price
from OrderItems
where order_num = 20008
;

select CONCAT(trim(Vendors.vend_name),' (',trim(Vendors.vend_country),')') AS addr
from Vendors
;

SELECT CONCAT(Vendors.vend_name,' (',Vendors.vend_country,')') AS addr
FROM Vendors
ORDER BY vend_country
;

SELECT cust_contact as cu_ctt
FROM Customers
WHERE cust_contact LIKE 'J%'
;

SELECT *
FROM Products
WHERE prod_name LIKE '% inch teddy bear'
;

SELECT *
FROM Products
WHERE prod_name LIKE '__ inch teddy bear'
;

SELECT *
FROM Products
WHERE prod_name LIKE '_ inch teddy bear'
;

SELECT *
FROM Products
WHERE prod_name LIKE '%bean%'
;

SELECT *
FROM Products
WHERE prod_name LIKE 'Fish%'
;

select *
from Products
where vend_id in ('DLL01','BRS01')
;

select *
from Products
where not (vend_id='DLL01' or vend_id = 'BRS01') or not (prod_price >= 10)
;

select *
from Products
where vend_id='DLL01' or vend_id = 'BRS01' and prod_price >= 10
;

select *
from Products
where vend_id='DLL01' or vend_id = 'BRS01'
;

select *
from Products
where vend_id='DLL01' and prod_price<4
;

# select选中的字段可以不包含where过滤子句中的字段
select cust_name 
from Customers
where cust_email IS null
;

SELECT * 
FROM Products
WHERE vend_id <> 'DLL01'
ORDER BY 4 DESC,3 DESC -- ORDER BY子句应该是该语句的最后一行
-- limit 5 -- 最多行数限制（上限）
-- offset 5  -- 偏移
;

/*
这也是注释


*/