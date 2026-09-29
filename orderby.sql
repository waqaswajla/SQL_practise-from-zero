select * from customers 
select * from orders 


select order_id ,totalamount 
from orders
order by totalamount desc

select customer_id , name 
from customers 
order by name asc 

select order_id ,totalamount 
from orders 
order by totalamount desc ,order_id asc

select name ,city 
from customers 
order by city asc ,name asc


select c.name,sum(totalamount) as totalspendings
from customers as c 
inner join orders as o 
on c.customer_id=o.customer_id 
group by c.name 
order by totalspendings desc 

select c.name ,c.city,count(o.order_id) as counts
from orders as o 
inner join customers as c 
on o.customer_id =c.customer_id
group by c.name ,c.city
having count (o.order_id)>1
order by counts desc 

select c.name,c.city,o.productname,o.totalamount
from orders as o 
left join customers  as c 
on c.customer_id=o.customer_id
order by c.city ,o.totalamount desc 

select c.name,c.city ,o.order_id
from orders as o 
left join customers as c 
on o.customer_id=c.customer_id
group by c.name ,c.city ,o.order_id
having (o.order_id) is null 

select c.name,c.city ,o.order_id
from customers as c
left join orders as o 
on o.customer_id=c.customer_id
where o.order_id is null 

select c.city ,sum(o.totalamount) as totalrevenue
from customers as c 
inner join orders as o 
on c.customer_id=o.customer_id
group by c.city 
having sum(o.totalamount)>5000
order by totalrevenue desc