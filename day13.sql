create database bank;

use bank;
     
create table if not exists accounts(
account int,
name varchar(20),
amount int
);
insert into accounts(account,name,amount)
values(101,"A",3000),(102,"B",5000),(103,"C",8000);

select *from accounts;
-- transfer 3000from 103 to 101
set sql_safe_updates=0;
begin;
update accounts set amount =amount - 3000
where account = 103; 
savepoint sp1;
update accounts set amount =amount + 3000
where account = 101;
savepoint sp2;
select * from accounts
commit;
rollback;

