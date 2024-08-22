use user;

CREATE TABLE my_biodata (
    id int  primary key auto_increment,
    firstname varchar(50),
    lastname varchar(50),
    department varchar(50),
    salary decimal(10, 2)
);

select * from my_biodata;

-- 1. start transiction
start transaction;

-- 2.Insert Records within the Transaction
insert into my_biodata (firstname,lastname,department,salary)values( 'John', 'Doe', 'Engineering', 70000.00);

insert into my_biodata (firstname,lastname,department,salary)values ('Jane', 'Smith', 'Marketing', 65000.00);

-- 3.Create a savepoint
savepoint BeforeRollback;

insert into my_biodata (firstname,lastname,department,salary)values ('aniket', 'chaudhari', 'medical', 70000.00);

select * from my_biodata;


-- 4.Rollback to Savepoint:it undo the last insert statement
rollback to BeforeRollback;

select * from my_biodata;

commit;


