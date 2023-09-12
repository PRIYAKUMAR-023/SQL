use company;
select *from db_employee;
select *from db_dept;
alter table db_dept rename column id to department_id;

-- inner join or join --
select e.first_name ,e.salary, d.department from db_employee as e inner join db_dept as d on e.department_id=d.department_id;

-- right join --
select e.first_name ,e.salary, d.department from db_employee as e right join db_dept as d on e.department_id=d.department_id;

-- left join --
select e.first_name ,e.salary, d.department from db_employee as e left join db_dept as d on e.department_id=d.department_id;

-- cross join --
select e.first_name,e.salary,d.department from db_employee as e cross join db_dept as d;
select e.first_name,e.salary,d.department,c.college_name,c.location from db_employee as e inner join db_dept as d on e.department_id=d.department_id cross join college as c;



create table college(college_name varchar(100),location varchar(50));
insert into college values ('Vellalar institutions','Erode');
select *from college;

