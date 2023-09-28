-- create a table name as customer --

create table customer(customer_id varchar(20),
customer_name varchar(100),
customer_address varchar(200),
city varchar(50),
state varchar(50),
zipcode int );

-- insert the values in customer table --

insert into customer values (1,'john doe','392 sunset blvd','newyork','NT',10059);
insert into customer values	(2,'mary smith','6900 main st','san francisco','CA',94032);
insert into customer values (3,'richard newman','2040 riverside rd','san diego','CA',92010);
insert into customer values	( 4,'cathy cook','4010 speedway','tucson','AZ',85719);


select *from customer;

-- change the customer_address to customer in customer table --

alter table customer change customer_address  address varchar(100);

-- add mobile number in customer table --
alter table customer add column mobile_number int;

-- delete the column where mobile number is null --

delete from customer where mobile_number is null;

-- safe update mood --
set sql_safe_updates=0;

drop table customer;

select mobile_number from customer;

update customer set mobile_number=9965397574 where mobile_number is null;

use dummy;

set sql_safe_updates=0;

alter table customer change mobile_number mobile_number varchar(30);

update customer set mobile_number=9488969857 where customer_id=1;
update customer set mobile_number=9543954441 where customer_id=2;
update customer set mobile_number=9842896945 where customer_id=4;