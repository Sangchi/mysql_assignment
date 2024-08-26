create database views_assignment;

use views_assignment;
set sql_safe_updates=0;

create table employee( employee_id int primary key auto_increment,first_name varchar(50),last_name varchar(50),salary decimal(10,2));

select * from employee;

insert into employee(first_name,last_name,salary)values('John', 'Doe', 55000),('Jane', 'Smith', 75000),
('Emily', 'Jones', 65000),('Michael', 'Brown', 80000),('Sarah', 'Wilson', 60000);

select * from employee;

-- create view 

create view view_employee as select employee_id ,first_name,last_name,salary from employee where salary >50000;

-- show view 
select * from view_employee;

-- Update Data via the View

update view_employee set salary=salary * 1.05;
select * from view_employee;

-- Delete Data via the View
delete from view_employee where employee_id=2;
select * from view_employee;

-- drop the view table

drop view if exists view_employe;