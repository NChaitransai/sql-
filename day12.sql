use it_company;

create view it_dept as
select empid,name from employees
where dept ="it";

-- select data in view
 select * from it_dept;
 
 -- check original table data
 select * from employees;
 
 --check orginal tabledata
 select * from employees
 


