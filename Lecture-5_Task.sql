Create DATABASE JoinPracticeDB;

USE JoinPracticeDB;

CREATE TABLE Customer
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO Customer
(customer_id, customer_name, city, country)
VALUES
(1, 'Rahul Sharma', 'Ahmedabad', 'India'),
(2, 'Priya Patel', 'Mumbai', 'India'),
(3, 'Amit Shah', 'Delhi', 'India'),
(4, 'Neha Mehta', 'Pune', 'India'),
(5, 'Rohan Desai', 'Surat', 'India'),
(6, 'Karan Joshi', 'Jaipur', 'India'),
(7, 'Sneha Patel', 'Bangalore', 'India'),
(8, 'Vikas Shah', 'Vadodara', 'India'),
(9, 'Anjali Singh', 'Delhi', 'India'),
(10, 'Raj Malhotra', 'Chennai', 'India');

select * from customer;

CREATE TABLE Orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    quantity INT,
    amount DECIMAL(10,2)
);

INSERT INTO Orders
(order_id, customer_id, product_name, quantity, amount)
VALUES
(101, 1, 'Laptop', 1, 55000.00),
(102, 2, 'Mobile', 2, 30000.00),
(103, 3, 'Keyboard', 3, 4500.00),
(104, 4, 'Monitor', 1, 18000.00),
(105, 5, 'Mouse', 5, 2500.00),
(106, 6, 'Printer', 1, 12000.00),
(107, 7, 'Laptop Bag', 2, 3000.00),
(108, 11, 'Tablet', 1, 25000.00),
(109, 12, 'Headphones', 2, 6000.00),
(110, 13, 'Smart Watch', 1, 8000.00);

SELECT * FROM Orders;

--t1
select 
c.customer_id, c.customer_name, c.city, 
o.order_id, o.product_name, o.amount
from Customer as c
join Orders as o
on c.customer_id = o.customer_id;

--t2
select 
c.customer_name, c.city, 
o.product_name, o.amount
from Customer as c
join Orders as o
on c.customer_id = o.customer_id;

--t3
select 
c.customer_id, c.customer_name, 
o.order_id, o.product_name, o.amount
from Customer as c
left join Orders as o
on c.customer_id = o.customer_id;

--t4
select 
c.customer_id, c.customer_name, c.city
--o.order_id, o.product_name, o.amount
from Customer as c
left join Orders as o
on c.customer_id = o.customer_id;

--t5
select 
c.customer_id, c.customer_name,
o.order_id, o.product_name, o.amount
from Customer as c
right join Orders as o
on c.customer_id = o.customer_id;

--t6
select 
c.customer_id,
o.order_id, o.product_name, o.amount
from Customer as c
right join Orders as o
on c.customer_id = o.customer_id;

--t7
select 
c.customer_id, c.customer_name, 
o.order_id, o.product_name, o.amount
from Customer as c
full join Orders as o
on c.customer_id = o.customer_id;

--t8
select 
c.customer_name, 
o.order_id, o.product_name, o.amount
from Customer as c
join Orders as o
on c.customer_id = o.customer_id
where o.amount>10000;

--t9
select 
c.customer_name, c.city, 
o.order_id, o.product_name, o.amount
from Customer as c
join Orders as o
on c.customer_id = o.customer_id
where c.city='Delhi';

select * from customer;

--t10
select 
c.customer_name, 
o.product_name, o.amount, o.quantity
from Customer as c
join Orders as o
on c.customer_id = o.customer_id
where o.quantity>2
order by quantity desc;

--t11
SELECT
C.customer_id,
C.customer_name,
SUM(o.amount) as total_amount 
FROM Customer AS c 
left join
Orders as o
on c.customer_id=o.customer_id
group by c.customer_id , c.customer_name;
