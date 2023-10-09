use company;

-- CAST--
select cast(38.29374 as signed);

select cast('20,11,23' as date);

select cast('20,11,23' as datetime);

select cast(price as signed)from restrarunt_details; -- it is rounded the price--

select itemname,cast(price as signed)from restrarunt_details;

-- convert()--
select convert(23.45 ,decimal);

select convert('03,12,02',date);

select convert('092344' ,time);


