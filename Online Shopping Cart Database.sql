-- query the address, starttime and endtime of the servicepoints in the same city as userid 5 

select startTime,endTime,s.streetaddr from
servicepoint s join address a
using(city) where userid=5;

-- query the information of laptops

select * from product
where type = "laptop";

-- query the total quantity of products from store with storeid 8 in the shopping cart

select sum(quantity) as Total_Quantity
from save_to_shopping_cart
where pid = (select sid from store where sid=8);

-- query the name and address of orders delivered on 2017-02-17

select a.streetaddr, a.name
from address a join deliver_to d
on a.addrid = d.addrid
where d.TimeDelivered="2017-02-17";

-- query the comments of product 2 

select content from comments
where pid = 2;

-- ------------------------------------------- --
-- Data Modification

-- Insert the user id of sellers whose name starts with A into buyer
Insert into buyer
select * from seller
where userid in (select userid from users where name like "A%");