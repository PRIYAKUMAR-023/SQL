use company;
select*from db_employee;
select *from db_dept;

select department_id,max(salary) from db_employee group by department_id;
select *from db_employee where (department_id,salary)in (select department_id,max(salary) from db_employee group by department_id);


select e.first_name ,e.last_name,e.salary,d.department from db_employee as e left join db_dept as d on d.department_id=e.department_id;

select *from db_employee  where (select e.first_name ,e.last_name,e.salary,d.department from db_employee as e left join db_dept as d on d.department_id=e.department_id);

update db_employee set gender='M' where gender is null;
set sql_safe_updates=0;
update db_employee set gender='F' where id=21002;   