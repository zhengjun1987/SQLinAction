-- select rtrim(vend_name)+'('+rtrim(vend_country)+')' as vend_title
select concat(rtrim(vend_name),'(',rtrim(vend_country),')') as vend_title
from Vendors
order by vend_name;
/*
# vend_title
Bear Emporium(USA)
Bears R Us(USA)
Doll House Inc.(USA)
Fun and Games(England)
Furball Inc.(USA)
Jouets et ours(France)
*/

select cust_name,Customers.cust_contact,Customers.cust_email
from Customers
where cust_state in ('IL','IN','MI');
/*
# cust_name, cust_contact, cust_email
Village Toys, John Smith, sales@villagetoys.com
Fun4All, Jim Jones, jjones@fun4all.com
The Toy Store, Kim Howard, 
*/

select cust_name,Customers.cust_contact,Customers.cust_email
from Customers
where cust_name ='Fun4All';
/*
'Fun4All','Jim Jones','jjones@fun4all.com'
'Fun4All','Denise L. Stephens','dstephens@fun4all.com'
*/

select cust_name,Customers.cust_contact,Customers.cust_email
from Customers
where cust_state in ('IL','IN','MI')
union
select cust_name,Customers.cust_contact,Customers.cust_email
from Customers
where cust_name ='Fun4All';
/*
# cust_name, cust_contact, cust_email
Village Toys, John Smith, sales@villagetoys.com
Fun4All, Jim Jones, jjones@fun4all.com
The Toy Store, Kim Howard, 
Fun4All, Denise L. Stephens, dstephens@fun4all.com
*/

select cust_name,Customers.cust_contact,Customers.cust_email
from Customers
where cust_state in ('IL','IN','MI') or cust_name ='Fun4All';
/*
# cust_name, cust_contact, cust_email
Village Toys, John Smith, sales@villagetoys.com
Fun4All, Jim Jones, jjones@fun4all.com
Fun4All, Denise L. Stephens, dstephens@fun4all.com
The Toy Store, Kim Howard, 
*/

select cust_name,Customers.cust_contact,Customers.cust_email
from Customers
where cust_state in ('IL','IN','MI')
union all
select cust_name,Customers.cust_contact,Customers.cust_email
from Customers
where cust_name ='Fun4All';
/*
# cust_name, cust_contact, cust_email
Village Toys, John Smith, sales@villagetoys.com
Fun4All, Jim Jones, jjones@fun4all.com
The Toy Store, Kim Howard, 
Fun4All, Jim Jones, jjones@fun4all.com
Fun4All, Denise L. Stephens, dstephens@fun4all.com
*/

select cust_name,Customers.cust_contact,Customers.cust_email
from Customers
where cust_state in ('IL','IN','MI')
union all
select cust_name,Customers.cust_contact,Customers.cust_email
from Customers
where cust_name ='Fun4All'
order by cust_name,cust_contact;
/*
# cust_name, cust_contact, cust_email
Fun4All, Denise L. Stephens, dstephens@fun4all.com
Fun4All, Jim Jones, jjones@fun4all.com
Fun4All, Jim Jones, jjones@fun4all.com
The Toy Store, Kim Howard, 
Village Toys, John Smith, sales@villagetoys.com
*/