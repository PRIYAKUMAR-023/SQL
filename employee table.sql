use company;
create table db_employee
(id  int,
first_name  varchar(10),
last_name  varchar(10),
salary int,
department_id int);
create table db_dept(id int,
department varchar(20));
insert into db_dept values (1,'engineering'),(2,'humanresources'),(3,'testing'),(4,'sales'),(5,'customercare');
select * from db_dept;
insert into db_employee values('21001','shakthi','kumar',29000,3),('21002','gaythri','senthil','28000',5),('21003','dinesh','venket',34000,1),('21002','priya','kumar',35000,2);
insert into db_dept values(6,'datascience');
insert into db_employee values (21010,'dharanesh','kumar',50000,1),(21011,'kansika','mahesvaran',30000,5);
insert into db_employee values(21006,'priyadharishini','govindasammy',35000,6),(21007,'roshini','mudhu',40000,3),(21008,'sabitha','gunath',38000,4),(21009,'guna','karthi',29000,4);
alter table db_employee modify column first_name varchar(20) ;
alter table db_employee modify column last_name varchar(20);
select max(salary) from db_employee where department_id=4; /*max*/
select count(*)from db_employee;
select avg(salary)from db_employee;
alter table db_employee add column gender varchar(10);
select (id) from db_employee where gender ('M','F','M','F','F','F','F','M','M','F');
select  distinct * from db_employee;
select first_name,last_name as employee_name from db_employee;
drop table db_employee;
alter table db_employee;
select count(salary) from db_employee;
select * from db_employee order by id;
select*from db_employee where salary>30000 order by id;
select*from db_employee where salary between 25000 and 30000;
select*from db_employee where first_name='priya';
select*from db_employee where last_name <>'kumar'; /*either use != */
select *from db_employee where first_name like 's%';
select first_name from db_employee where last_name in ('kumar','gunath'); /*To specify multiple possible values for a cloumn*/
select distinct first_name from db_employee where first_name like 's%';
select* from db_employee order by salary,id desc;
select*from db_employee where salary>25000 and first_name like 'd%'; /* more than one condition*/
select*from db_employee where salary>34000 or first_name like 's%'; /* if any of the  condition*/
select* from db_employee where salary>30000 and (first_name like 'r%'or first_name like 'g%'); /*if without parenthesis, select all the values of salary who's salary is greater thsn 30000)*/
select*from db_employee where not salary=35000; 
select*from db_employee where  first_name not like 'r%';
select*from db_employee where salary not between 25000 and 30000;
select *from db_employee where id in('21002');
select *from db_employee where gender in (select * from db_employee values('M','F','M','F','M','F','F','F','F','M')where gender;
insert into db_employee values('21013','sammy','kupta','60000','4','M');
select*from db_employee;
insert into db_employee (id,department_id) values ('21014','5');
select * from db_employee where gender is  not null; /*null values rows are not presented here*/
select * from db_employee where gender is  null; /*null values rows are presented here*/
update  db_employee set salary=65000 where id=21013;
set sql_safe_updates =0;
delete from db_employee where id=21013;
select *from db_employee limit 3;
select distinct *from db_employee limit 6;
select *from db_employee where salary fetch first 3 rows only;
select concat(first_name,last_name) as employee_name from db_employee; -- concadination--
select *from db_employee where salary limit 9;
select min(salary)from db_employee;
select max(salary)from db_employee;
select avg(salary)from db_employee;
select min(salary)from db_employee where salary>35000;
select count(*)as 210thbatch from db_employee where id like'210%'; 
select sum(salary*2)from db_employee where salary=60000;
select count(distinct salary)from db_employee;
select sum(salary)from db_employee where salary>45000;
select *from db_employee where first_name like '_i%';  -- Wildcards --
select*from db_employee where first_name in ('sabitha','priya','rose');
select*from db_employee where department_id  in(select id from db_dept);
drop table db_dept;
select *from db_employee where salary between 25000 and 30000 and id not in (21011);
select department_id  from db_employee as dept_id ;
select *from db_employee;
select salary as "employee salary" from db_employee;
select concat(first_name,last_name) as "employee name" from db_employee; 
select e.first_name , i.id from db_employee as e ,db_dept as i where e.department_id=i.id;
select e.first_name,e.salary,i.id from db_employee as e inner join db_dept as i on e.department_id=i.id order by e.first_name;
select first_name from db_employee T1 ,db_dept T2 where salary>=35000; -- self join --
select first_name,last_name from db_employee 
union  all
select id from db_dept; -- here two tables not in same order --
SELECT count(*)from db_employee group by department_id order by max(salary)desc;
select count(salary)from db_employee group by first_name having count(salary>35000);
