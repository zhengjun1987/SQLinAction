update Customers
set cust_email = 'kim@thetoystore.com'
where cust_id = '1000000005';

update CustCopy
set cust_email = 'kim@thetoystore.com'
where cust_id = '1000000005';

/*Error Code: 1175. 
You are using safe update mode and 
you tried to update a table without a WHERE that uses a KEY column To disable safe mode, 
toggle the option in Preferences -> SQL Editor and reconnect.
*/

update Customers
set cust_contact = 'Sam Roberts',
	cust_email ='sam@toyland.com'
where cust_id = '1000000006';

update Customers
set cust_email = null
where cust_id = '1000000005';

delete from Customers
where cust_id = '1000000006';