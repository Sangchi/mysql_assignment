
use mydata;

-- create an procedure

delimiter $$

create procedure add_number(
         in num1  decimal(10,2),
         in num2  decimal(10,2),
         out sum decimal(10,2))
         
begin
     set sum=num1 +num2;
end;
$$

-- calling procedure
call add_number(10,20,@sum);
select @sum as result;

$$
call add_number(20,20,@sum);
select @sum as result;

$$
