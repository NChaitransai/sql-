-- use classic models
use classicmodels;

select * from employees
where officecode = 1;

select * from employees
where officecode=(select officecode from employees where employeenumber = 1002 and employeenumber!=1002);

-- return employeenumber,employee full name(firstname+lastname)followed by office location those are belongs to 1002's office code
select employeesnumber,concat(firstnmae,"",lastname),country
from employee e
inner join offices o
on e.officecode=o.officecode
where o.officecode=(select offficecode from employees where employeenumber=100);

select officecode count(*) from employees
group by officecode
having count(*) >=(select count(*) from employees where officecode=6);

use it_company;
select * from employees
select * from employees



