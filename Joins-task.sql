create database demodb;

use demodb;

create table customers(
ID int primary key,
Name varchar(50),
Age int,
Address varchar(50)
);

insert into customers
values
(1, 'Rohan', 21, 'Ahmedabad'),
(2, 'Riya', 22, 'Ahmedabad'),
(3, 'Het', 23, 'Ahmedabad'),
(4, 'Hiren', 24, 'Ahmedabad');

select * from customers;

create table orders(
OID int,
Customer_ID int primary key,
Item varchar(50),
Amount int
);

insert into orders
values
(01, 1, 'Pizza', 230 ),
(02, 2, 'Dosa', 180),
(03, 5, 'Wrap', 150 ),
(04, 7, 'Burger', 120);

select * from orders;

-- Inner Join
select * from customers
join orders
on customers.ID = orders.Customer_ID;

-- Left Join
select * from customers
left join orders
on customers.ID = orders.Customer_ID;

-- Right Join
select * from customers
right join orders
on customers.ID = orders.Customer_ID;

-- full Join
select * from customers
full join orders
on customers.ID = orders.Customer_ID;