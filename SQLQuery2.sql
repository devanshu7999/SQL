CREATE DATABASE SalesAnalyticsDB;

use SalesAnalyticsDB;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    age INT,
    country VARCHAR(50),
    amount_spend INT
);

INSERT INTO customers (id, user_name, age, country, amount_spend) VALUES
(1, 'Rahul', 28, 'India', 4500),
(2, 'Emma', 34, 'USA', 7200),
(3, 'Liam', 25, 'Canada', 3100),
(4, 'Sophia', 41, 'UK', 8900),
(5, 'Arjun', 30, 'India', 5600),
(6, 'Olivia', 27, 'Australia', 4300),
(7, 'Noah', 36, 'Germany', 6700),
(8, 'Ava', 22, 'France', 2900),
(9, 'Ethan', 45, 'USA', 10500),
(10, 'Priya', 32, 'India', 7800),
(11, 'Lucas', 29, 'Brazil', 3900),
(12, 'Mia', 38, 'Canada', 6100),
(13, 'Daniel', 26, 'Spain', 3500),
(14, 'Ananya', 31, 'India', 9200),
(15, 'James', 40, 'UK', 8400);

select * from customers;

select user_name, age, country from customers;

select user_name, country, amount_spend  from customers;

select * from customers where amount_spend > 50000;

select * from customers where age < 30;

select * from customers where country = 'India';

select * from customers where amount_spend < 20000;


select * from customers where age<30 and amount_spend > 30000;

select * from customers where country='India' and amount_spend > 40000;

select * from customers where country='India' or country='USA';

select * from customers where country='India' or country='USA' and amount_spend>50000;


select * from customers where not country='India' or country='USA';


select * from customers order by amount_spend asc;

select * from customers order by amount_spend desc;

select * from customers order by age asc;

select * from customers where age between 25 and 40 and amount_spend>30000 and country='India' or country='USA' order by amount_spend desc;

SELECT * from customers
WHERE age>=30
AND amount_spend>40000 and
NOT country='India'
ORDER BY amount_spend desc;

