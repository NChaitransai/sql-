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
concat_ws(" ","code","ganan"), trim("code")