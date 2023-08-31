select * from company;
insert into company values('infoysy','bangalore',500,100,60);
insert into company(company_name)values no_of_branch=200;
update company set company_loc='covai',no_of_projects=150 where company_name='ABC';
set SQL_safe_updates=0;
alter table company add primary key(company_name);
delete from company where company_name='infoysy';
create table subjects(subject_code varchar(10), subject varchar(30));
insert into subjects values('001','TAMIL'),('002','ENGLISH'),('003','MATHS'),('004','SCIENCE'),('005','SOCIAL'),('006','GK'),('007','EVS');
select *from subjects;
select subject from subjects where subject != 'GK';   /*comparison operator*/
select *from company order by no_of_employees;
select*from company where no_of_employees between 100 and 7000 order by no_of_employees;
select*from subjects where subject not in ('Maths','GK','Tamil'); /*logical operator*/
select*from subjects where subject  in ('Maths','GK','Tamil');
select *from subjects where subject like 'M%';
select*from company where no_of_employees>10000 or no_of_projects<750; /*either one condition to be satisfied*/
select(5+2); /*arthimetic operator*/
select(5*2);
select(5-2);
select(10/2);