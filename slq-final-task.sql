create database mysuperstore;

use mysuperstore;

-- 1
select * from dbo.samplesuperstore;

-- 2
select Order_ID, Order_Date, Customer_Name, Category, Sales, Profit from dbo.samplesuperstore;

-- 3
select Order_ID, Order_Date, Customer_Name, Category, Sales, Profit  from dbo.samplesuperstore where Sales>500;

--4
select 