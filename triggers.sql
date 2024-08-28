create database trigger_assignment;

use trigger_assignment;

-- off the safe mode for updatiion of data in table
set sql_safe_updates=0;

create table emp_data(employee_id int primary key  not null,first_name varchar(50),last_name varchar(50),salaray decimal(10,2),department_id int,date_hired date);

 -- create trigger before update salary 
 
DELIMITER $$

create trigger before_update_salary 
before update on emp_data
for each row
begin
    if new.salaray < 5000 then
        signal sqlstate '45000' 
			set message_text= 'Salary must be at least $5000';
    end if;
end;
$$


--  Insert a sample employee
insert into emp_data values(1, 'John', 'Doe', 6000, 101, '2024-08-26');
$$

-- Attempt to update the salary to a value below the threshold (should fail)

update emp_data set salaray = 7000 where employee_id = 1;  -- it will raise an errror !!!
$$
-- show data
select * from emp_data where employee_id=1;

$$

-- create an backup table to store the old data of employee table
create table backup(employee_id int primary key  not null,first_name varchar(50),last_name varchar(50),salaray decimal(10,2),department_id int,date_hired date);

$$
create trigger t1 
before update on emp_data
for each row
begin
     insert into backup(employee_id,salaray)
     values(old.employee_id,old.salaray);
     
end;

$$

update emp_data set salaray=8000 where employee_id=1;
$$

update emp_data set employee_id=3 where salaray=8000;

$$

-- old data employee id and salary inserted in backup
select * from backup;

$$

select * from emp_data;

$$



-- 