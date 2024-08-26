create database acount;
use acount;

create table accounts(id int primary key not null,account_name varchar(50),balance decimal(10,2) check (balance >0));

insert into accounts(id,account_name,balance)values (1, 'Alice', 5000.00),(2, 'Bob', 3000.00);

select * from accounts;

--  Perform a Transaction (ACID Properties in Action)
-- accounts will be update
start transaction;
update accounts set balance=balance-1000.00 where id=1;
update accounts set balance=balance+1000.00 where id=2;

select * from accounts;

commit;

select * from accounts;

-- fail the transiction but database should be consistent after failur 
start transaction;
update accounts set balance=balance-6000.00 where id=1;   -- it voiltes the condition fail the transiction 
update accounts set balance=balance+6000.00 where id=2;
commit;
select * from accounts;


/*
Atomicity: Ensures that the entire transaction (both debiting and crediting) is treated as a single unit.
 If anything fails, the whole transaction is rolled back.
 
Consistency: Ensures that all database rules (like no negative balances) are respected. 
The database remains in a consistent state before and after the transaction.

Isolation: Ensures that the ongoing transaction's intermediate states are not visible to other transactions,
 preventing any interference or data inconsistency.
 
Durability: Ensures that once the transaction is committed, the changes are permanently stored,
 even in the case of system failures.


*/

