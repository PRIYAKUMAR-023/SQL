use company;

select salary from db_employee where salary <(select max(salary) from db_employee) order by salary DESC;

-- limit ()--
-- syntax--

select column_name  from table_name order by expression limit n-1,1;

select * from db_employee order by salary desc limit 9,1; -- this is  the 10 th place of the  salary of the table --

-- find the  first 5 highest salary --
select *from db_employee order by salary desc limit 0,5;

-- find the last 5 salary --
select * from db_employee order by salary limit 0,5;
 
 select count(*) from db_employee;
 
 -- dense rank--
 select*from
 (select  *, dense_rank() over(order by salary desc) as rank_salary from db_employee) as e
 where rank_salary=7  ;
 
 