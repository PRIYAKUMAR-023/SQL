use dummy;
select * from student;

-- aggergate functions --

-- 1)sum --

select sum(marks)as totalmarks from student;

-- 2)max --

select max(marks) as max_marks from student;

-- 3)min --

select min(marks)as min_marks from student;

-- 4)avg --

select avg(marks) as avg_marks from student;

-- 5)count-- 

select count(name) as strength_of_the_class from student