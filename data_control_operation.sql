use user;

/*
CREATE TABLE Employees;: Creates a table with fields for employee information.
CREATE USER;: Creates a new MySQL user with the specified username and password.
GRANT;: Grants specified privileges (e.g., SELECT, INSERT) to the user on a specific table.
REVOKE;: Removes specified privileges from the user.
FLUSH PRIVILEGES;: Applies the changes made by GRANT and REVOKE.

*/

create table my_employees (
    employeeid int primary key  auto_increment,
    firstname varchar(50),
    lastname varchar(50),
    department varchar(50),
    salary decimal(10, 2)
);

-- 1.Grant Privileges to a User:

-- Create a user
create  user 'john_doe'@'localhost' identified by 'password123';

-- Grant SELECT and INSERT privileges on the Employees table to the user
grant  select, insert on user.my_employees to 'john_doe'@'localhost';

-- Apply the changes
flush privileges;

-- 2.Revoke Privileges from a User:

-- Revoke INSERT privilege from the user
revoke insert on user.my_employees from 'john_doe'@'localhost';

-- apply changes
flush privileges;