
use user;
SET SQL_SAFE_UPDATES = 0;

create table userdata (userid int primary key,first_name varchar(30),last_name varchar(30), dateofbirth date);

select * from userdata;

insert into userdata VALUES (1, 'John', 'Doe', '2000-05-15');
insert into userdata VALUES (2, 'shatanu', 'bansal', '2000-05-15');
insert into userdata VALUES (3, 'aniket', 'babar', '2000-05-15');
insert into userdata VALUES (4, 'aniket', 'chaudhari', '2000-05-15');
insert into userdata VALUES (5, 'shubham', 'shaha', '2000-05-15');
insert into userdata VALUES (6, 'prashant', 'chavan', '2000-05-15');

select * from userdata;

update userdata set first_name="sagar" where first_name="prashant";

select * from userdata;
delete from userdata where userid=6;

select * from userdata;
