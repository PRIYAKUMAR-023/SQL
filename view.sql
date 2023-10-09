-- why we use view in sql --
-- 1) security --
-- 2) complexity--
-- 3) consistency--

use company;
select *from db_employee;
select * from company;

create view employeeview as select * from db_employee;
select * from employeeview;
create view companystatus as select company_name,no_of_employees,no_of_projects from company;

select * from companystatus;

-- insert --
insert into companystatus values ('TCS',50000,2000);

-- update--

update companystatus set no_of_employees=500 where company_name='ABC';

set sql_safe_updates=0;

delete from companystatus where company_name='ABC';

-- drop--

drop view companystatus;
rollback;
