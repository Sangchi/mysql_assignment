use user;

create table employee(id int primary key not null,first_name varchar(50),last_name varchar(50),hired_date date,birth_date date,login_time datetime);

insert into employee values(1, 'John', 'Doe', '2020-01-15', '1990-05-25', '2024-08-22 08:30:00');
insert into employee values(2, 'Jane', 'Smith', '2019-03-22', '1985-09-13', '2024-08-21 17:45:00');
insert into employee values(3, 'Jim', 'Beam', '2022-11-02', '1992-12-30', '2024-08-20 09:15:00');

select * from employee;

-- 1. Current Date and Time (NOW())   

select now();

-- 2.Current Date (CURDATE())  

SELECT curdate() ;

-- 3. current time time() 

select current_time();

-- 4. adddate interval in table 
select first_name, last_name, hired_date, 
       date_add(hired_date, interval 10 day) as hire_date_plus_10_days
from employee;

-- 5.  Difference in Days Between Two Dates (DATEDIFF()) 

select first_name,last_name ,datediff(now(),hired_date) as day_since_hired from  employee;

-- 6. Format last_login to a Specific Format (DATE_FORMAT()) 

select first_name,last_name,date_format(login_time, '%Y-%m-%d %H:%i:%s') as formated_last_login from employee;

-- 7. Extract Year from hire_date (EXTRACT())  

select first_name,last_name,extract(year from hired_date)as hired_year from employee;

-- 8.  Get the Day of the Month from birth_date (DAY())  

select first_name,last_name,day(hired_date) as hired_day from employee;

-- 9. get the hired month from hired_date  (month())   

select first_name,last_name ,month(hired_date) as hired_month from employee;

-- 10. get the hired year from the hired date  (year())

select first_name,last_name,year(hired_date) as hired_year from employee;






