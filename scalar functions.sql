use company;

select *from company;
select * from db_employee;

-- ucase--
select ucase(first_name)from db_employee;

-- lcase--
select lcase(first_name)from db_employee where id=210023;

-- round()--
select round(avg(salary),1)from db_employee; -- one decimal point--
select round(avg(salary))from db_employee;
select avg(salary)from db_employee;

-- len() in mysql workbench length()--

select length(first_name)from db_employee where id=21002;
select first_name,length(first_name)as length_of_name from db_employee;

-- mid()--
select first_name ,mid(first_name,1,4)from db_employee;
