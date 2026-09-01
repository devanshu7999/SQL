create database collegeDb;

use collegeDb;

create table Students(
Student_ID Int Primary key,
Student_name varchar(50),
Age int,
Course varchar(50),
Marks decimal(5,2)
);

Insert into Students(Student_ID, Student_name,Age,Course,Marks)
Values
(1, 'Devanshu', 21,'DA',75),
(2, 'Vishwa',22,'DA',84);

select * from Students;


