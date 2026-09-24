use  sqlstartup
create table customers (
customer_id int primary key ,
name varchar(20),
city varchar(20),
dateofjoining date ,
isactive bit );

create table orders (
order_id int primary key ,
customer_id int ,
productname varchar(20),
quantity int ,
totalamount decimal(10,2),
foreign key (customer_id)references customers(customer_id)
);
INSERT INTO customers (customer_id, name, city, dateofjoining, isactive)
VALUES 
(101, 'ali khan', 'lahore', '2023-01-10', 1),
(102, 'sara ahmed', 'karachi', '2023-03-15', 1),
(103, 'bilal raza', 'islamabad', '2023-05-20', 0),
(104, 'hina malik', 'multan', '2023-07-01', 1);

INSERT INTO orders (order_id, customer_id, productname, quantity, totalamount)
VALUES
(1, 101, 'laptop', 1, 80000),
(2, 102, 'mouse', 2, 1000),
(3, 101, 'keyboard', 1, 3000),
(4, 104, 'monitor', 1, 15000);

select *from customers 
select * from orders 


select o.productname ,o.quantity
from orders as o 
where totalamount>5000

select c.customer_id ,o.order_id 
from customers as c 
left join orders as o 
on c.customer_id =o.customer_id

select c.name ,c.city
from customers as c 
inner join orders as o 
on c.customer_id=o.customer_id 

select o.order_id,c.name,c.city
from orders as o 
left join customers as c 
on o.customer_id=c.customer_id 

select c.name ,o.productname 
from customers as c 
inner join orders as o 
on c.customer_id =o.customer_id
where c.city='lahore'

select c.customer_id,o.order_id
from customers as c 
full outer join orders as o 
on c.customer_id=o.customer_id 

select c.name 
from customers as c
left join orders as o 
on c.customer_id=o.customer_id 
where o.order_id is null 