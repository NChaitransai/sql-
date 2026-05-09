create database school;

use school;

-- creating a table for class 9
create table class9(
id int,
name varchar(30),
age tinyint
);

-- crerating a table class 10
create table class10(
id int,
name varchar(25),
age tinyint,
class tinyint
);

-- inserting records in class 9 and 10
insert into class9 values(1,'ram',12),(2,'raju',10),(3,'ravi',14),
(4,'mahi',13);

insert into class10 values(1,'ram',12,10),(5,'keerti',10,10),(6,'preerana',14,10),
(4,'geetu',13,10);

select *from class9;
select * from class10;
-- union
(select id,name,age from class10)
union
(select id, name,age from class9);
-- union all
(select id,name,age from class10)
union all
(select id, name,age from class9);
 -- intersect
 (select id,name,age from class10)
intersect
(select id, name,age from class9);
 -- except
 (select id,name,age from class10)
except
(select id, name,age from class9);
