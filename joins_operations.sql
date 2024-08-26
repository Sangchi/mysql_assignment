use user;
show databases;
show tables;

-- create department table 
create table departments(id int primary key not null,department_name varchar(50));
-- show data
select * from departments;

-- create emplyee_data table
create table  employee_data(id int primary key not null,name varchar(50),department_id int ,manager_id int , foreign key (department_id) references departments(id));
-- show data
select * from employee_data;

-- insert data into department table
insert into departments(id,department_name)values(1,"HR"),(2,"engineering"),(3,"marketing");
select * from departments;

-- insert data into employee_data table
insert into employee_data(id,name,department_id,manager_id)
values(1, 'Alice', 1, NULL),
(2, 'Bob', 2, 1),
(3, 'Charlie', 2, 1),
(4, 'David', NULL, 2),
(5, 'Eve', 3, 3),
(6, 'Frank', 3, NULL);
select * from employee_data;

-- 1.inner join
select departments.department_name,employee_data.name from departments inner join employee_data on employee_data.department_id=departments.id;

-- 2. left join
select departments.department_name,employee_data.name from departments left join employee_data on employee_data.department_id=departments.id;

-- 3. right join
select departments.department_name ,employee_data.name from departments right join employee_data on employee_data.department_id=departments.id;

-- 4. full join
select  employee_data.name, departments.department_name
from  employee_data
left  join departments on employee_data.department_id = departments.id
union
select  employee_data.name, departments.department_name
from employee_data
right  join departments on employee_data.department_id = departments.id;

-- 5. cross join
select departments.department_name,employee_data.name from departments cross join employee_data on departments.id=employee_data.department_id;

-- 6. self join
select a.name as employee ,b.name as manager from employee_data a inner join employee_data b on a.manager_id=b.id;

-- 7. natural join
select departments.department_name ,employee_data.name from departments natural join employee_data;



