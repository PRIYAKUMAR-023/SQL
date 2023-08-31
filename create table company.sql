create database company;
use company;
create table company(
company_name varchar(20),
company_loc varchar(30),
no_of_employees int,
no_of_projects int,
project_completion int);
insert into company values('google','chennai',10000,1000,992),('wipro','chennai',5000,300,100),('ABC','covai',350,100,99);
alter table company drop column project_completion;
update company set no_of_employees='400' where company_name='ABC';
select company_name from company where company_name like'g%';
set sql_safe_updates=0;
alter table company add column no_of_branch int;
select*from company;
select*from company where no_of_employees>500 order by no_of_employees;
update company set company_loc='chennai'where company_name='ABC';
select*from company where no_of_employees between 100 and 1000;