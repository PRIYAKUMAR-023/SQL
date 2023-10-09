select*from db_employee;

-- whose firstname  start with p--
select *from db_employee where first_name like 'p%';

-- whose firstname end with a--
select *from db_employee where first_name like '%a';

-- whose  firstname starts with p and ends with a--
select *from db_employee where first_name like 'p%a';

-- whose name starts with p and salary between 30k-50k--
select *from db_employee where first_name like 'p%' and salary between 30000 and 50000;

-- underscore --
select *from db_employee where first_name like '____';

select *from db_employee where first_name like 'p____%';


