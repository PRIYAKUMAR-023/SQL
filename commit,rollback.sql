SET autocommit=0;


use company;
select *from db_employee;
commit;

update db_employee set salary=40000 where department_id=2;
set sql_safe_updates=0;
commit;

rollback;  

delete from db_employee where department_id=1;
