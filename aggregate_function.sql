use user;

create table data(id int primary key not null,first_name varchar(50),last_name varchar(50),department varchar(50),salary decimal(10,2),age int,hired_date date);

select * from data;

insert into data(id,first_name,last_name,department,salary,age,hired_date)values
(1, 'John', 'Doe', 'Sales', 55000.00, 30, '2020-01-15'),
(2, 'Jane', 'Smith', 'HR', 62000.00, 45, '2019-03-22'),
(3, 'Jim', 'Beam', 'IT', 75000.00, 29, '2022-11-02'),
(4, 'Jack', 'Daniels', 'Sales', 48000.00, 34, '2018-07-18'),
(5, 'Jill', 'Valentine', 'IT', 85000.00, 42, '2021-06-01'),
(6, 'Chris', 'Redfield', 'HR', 58000.00, 36, '2017-12-05'),
(7, 'Claire', 'Redfield', 'Sales', 51000.00, 28, '2016-09-09');

select * from data;

-- 1. get mininum salary from the table  
select min(salary) as minimum_salary from data;

-- 2. get total of salary column 

select sum(salary)as total from data;

-- 3. get average salary from data table 

select avg(salary) as average_salary from data;


-- 4.get the max salary from the table   

select max(salary) as max_salary from data;

-- 5. Count Employees in Each Department (COUNT())   

select count(*) as employee_count from data group by department;


-- 6. Variance of Salaries (VARIANCE() or equivalent)  
select variance(salary) as salary_variance from data;


 -- 7. Standard Deviation of Salaries (STDDEV())  
 select stddev(salary) as salary_stddev from data;
 
 -- 8.  COUNT DISTINCT: Count the number of unique departments.*/
 select count(distinct department) as distinct_department from data;
 
 -- 9.0 GROUP_CONCAT: Concatenate all distinct departments into a comma-separated list. 
 
 select group_concat(distinct department order by department) as distinct_department from data;
 
 -- 10.JSON_ARRAYAGG- Aggregate salaries into a JSON array
 
 select JSON_ARRAYAGG(salary) as salary_json_array   from data;
 


 
 
 
 
 
 
 








