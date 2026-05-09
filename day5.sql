-- select CLASSICMODELS database
use classicmodels;

select * from products;

-- find the each productline total buy price(Rounded to 2 places)
select productline,round(sum(quantityinstock*buyprice),2) Total_Buy_Price
from products
group by productline;

-- Find the selling price of each product as 10% discount and rounded to nearest upper values
select productName,MSRP,ceil((MSRP-msrp*0.1)) product_price_after_10_discount
from products;

select * from products;

select upper("srinu"),lower("sRINU"),concat("srinu","babu"),
concat_ws(" ","code","ganan"), trim("code");

-- date time functions
select * from orders; 

-- find the total orders in each year
select year(orderdate),count(*) from orders
group by year(orderdate);

-- which orders are taken morethan required date
select * from orders
where requireddate<shippeddate;
 -- which orders  are came intime and with howmany days
 select ordernumber,datediff(requireddate,shippeddate) as intime from orders
 select ordernumber,datediff(requireddate,shippeddate) as intime from orders
 where requireddate>shippeddate;
 
 select year("2026-04-22"),month("2026-04-22"),day("2026-04-22");

 

