delimiter $$
create function bonustatus(
salary char(20))
returns varchar(20)
deterministic 
begin
 if salary > 35000 then
 return('eligiable for bonus');
 else
 return('not eligible');
end if;
end $$
delimiter $$
select bonustatus(20000);
select*,bonustatus(salary)from db_employee;

use  sample;
select*from student;


delimiter $$
create function voting(age char(20))
returns varchar(30)
deterministic
begin
  if age>18 then
  return('eligiable for voting');
  else
   return(' not eligible for voting');
end if;
end $$
delimiter $$

select * ,voting(age)from student;

