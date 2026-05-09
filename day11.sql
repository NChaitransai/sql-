use it_company;

-- select employees table data
select * from employees;


-- return employee details those salary is graterthan average salary of their respective dept
select * from employees e1
where salary > (select avg(salary) from employees e2 where e1.dept =e2 .dept);

-- maximum salary employee details in each dept

-- select maximum salary employee details
select * from employees
where salary = (select max(salary) from employees);

select*from  employees e1
where salary = (select max(salary) from employees e2 where e1.dept=e2.dept);
 
 
 -- return minimimum age employee details in each dept
 
