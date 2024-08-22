use user;

create table employee_info(id int primary key ,first_name varchar(50),last_name varchar(50),email varchar(50),address varchar(100));

select * from employee_info;

insert into employee_info(id,first_name,last_name,email,address)values
(1, 'John', 'Doe', 'john.doe@example.com', '123 Elm Street, Springfield'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Oak Avenue, Metropolis'),
(3, 'Jim', 'Beam', 'jim.beam@example.com', '789 Pine Road, Gotham'),
(4, 'Jack', 'Daniels', 'jack.daniels@example.com', '101 Maple Drive, Star City'),
(5, 'Jill', 'Valentine', 'jill.valentine@example.com', '202 Birch Lane, Central City');

select * from employee_info;

-- 1. CONCAT: Concatenates two or more strings. 

select concat(first_name,'',last_name)as fullname from employee_info  ;

-- 2. SUBSTRING: Extracts a substring from a string.

select substring(email,1,10) as substring_emial from employee_info;

-- 3. LENGTH: Returns the length of a string.

select length(first_name) as first_name_length from employee_info;

-- 4. REPLACE: Replaces all occurrences of a substring within a string.

select replace(email,".com",".in") as updated_email from employee_info;

-- 5. UPPER: Converts a string to uppercase.

select upper(first_name)as captial_name from employee_info;

-- 6. LOWER: Converts a string to lowercase.

select lower(first_name) as lower_name from employee_info;

-- 7. TRIM: Removes leading and trailing spaces from a string.

select trim(email) as removed_white_spaces_bothside from employee_info;


-- 8. LEFT: Returns a specified number of characters from the left side of a string.

select ltrim(email) as reomved_leftspace from employee_info;

-- 9. RIGHT: Returns a specified number of characters from the right side of a string.

select rtrim(email) as removed_rightspace from employee_info;

-- 10. INSTR: Returns the position of the first occurrence of a substring within a string.

select instr(email,"@") as symbol_position from employee_info;