create schema dummy;
use dummy;

-- DDL (data definition language)  comments --
 
-- create --

create table student(
name varchar(50),
department varchar(100),
marks_scored int
);

-- alter --

alter table student add column city varchar(100);

alter table student change marks_scored marks int;

alter table student change city city varchar(200); -- data type changes --

-- drop --

drop table student;

insert into student value ('Priya','Maths',480,'Erode');
select *from student;

-- truncate --

truncate table student;