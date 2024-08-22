use user;

create table employee(id int primary key not null,emplyee_name varchar(50),position varchar(50));

select * from employee;
alter table employee add salary decimal(10,2);

select * from employee;

insert into employee values(1,"prashnat","python fullstack developer",40000);
insert into employee values(2,"aniket","Andriod developer",40000);

select * from employee;

truncate table employee;
-- it deletes the all rows from the table 

select * from employee;

drop table employee;
-- the drop delete the whole table from the database

select * from employee;
