use acount;

create  table Employee (
    employeeid int  primary key,
    firstname varchar(50),
    lastname varchar(50),
    department varchar(50),
    salary decimal(10, 2)
);

insert into Employee(employeeid,firstname,lastname,department,salary) values
(1, 'John', 'Doe', 'HR', 50000),
(2, 'Jane', 'Smith', 'IT', 60000),
(3, 'Emily', 'Davis', 'Finance', 55000),
(4, 'Michael', 'Brown', 'IT', 70000),
(5, 'Linda', 'Wilson', 'HR', 52000);

select * from Employee;

-- create an index to department table
create index ix_department on Employee(department);

select * from Employee where department="IT";

insert into Employee values(6, 'Alice', 'Johnson', 'Finance', 58000);
select * from Employee;

-- show index from the table
SHOW INDEX FROM Employee;

-- drop index from the table
drop index ix_Department on Employee;

select * from Employee;




