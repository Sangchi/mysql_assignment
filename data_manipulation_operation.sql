use user;
SET SQL_SAFE_UPDATES = 0;

create table data_info (
    id int auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not  null,
    email VARCHAR(100) not null UNIQUE,
    hire_date date not null,
    job_title varchar(50),
    salary decimal(10, 2)
);

-- 1. INSERT: Adding a new record

insert into data_info (first_name, last_name, email, hire_date, job_title, salary)
values
('Michael', 'Scott', 'michael.scott@example.com', '2024-08-10', 'Regional Manager', 65000.00),
('Pam', 'Beesly', 'pam.beesly@example.com', '2024-08-12', 'Receptionist', 40000.00),
('Jim', 'Halpert', 'jim.halpert@example.com', '2024-08-14', 'Sales Representative', 55000.00),
('Dwight', 'Schrute', 'dwight.schrute@example.com', '2024-08-15', 'Assistant Regional Manager', 60000.00),
('Stanley', 'Hudson', 'stanley.hudson@example.com', '2024-08-18', 'Sales Representative', 50000.00);

-- 2.SELECT: Retrieving data from the table

 select * from data_info;
 
 -- 3. UPDATE: Modifying existing data
 
 update  data_info set salary = 78000.00  where email = 'dwight.schrute@example.com';
 
 select * from data_info;
 
 -- 4. DELETE: Removing data from the table
 
 delete from data_info where email='dwight.schrute@example.com';
 
 select * from data_info;
 



