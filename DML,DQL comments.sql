use dummy;

-- DML (Data manipulation language) comments

-- insert --

insert into student values ('Priya','Maths',480,'Erode');
insert into student values ('Indhu','Commerce',469,'Selam');
insert into student values ('Sam','Tamil',456,'Coavi');
insert into student values('Surya','English',445,'Thiruchi');

-- update --

update student set marks=460 where marks=456;

set sql_safe_updates=0;

update student set name='PriyaKumar' where department='Maths';

-- delete --

delete from student where name='sam';

-- DQL(Data query language) comment --

-- select --

select *from student;

select name from student;

select name,marks from student;