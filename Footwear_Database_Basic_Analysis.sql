
create database if not exists footwear;
use footwear;
show tables;

select * from customers;
select * from  products;
select * from sales;
select * from sales_representative;
select * from suppliers;

alter table sales_reprentative rename sales_representative;

select count(*) from products;
select productid, sum(quantity) from sales group by productid;
select distinct productid from sales;

select date, sum(quantity) as product_sold from sales group by date order by date  ;
select sum(quantity) from sales;
select sum(totalamount) from sales;
select count(distinct customerid) from sales;

select distinct storelocation from sales;
select count(distinct state)  from customers;


# customerid name and quantiy of shoes purchase
select sales.customerid,firstname, lastname, sum(quantity)  as 'shoes_purchase', sum(totalamount) as 'total expense' from sales left join customers 
on sales.customerid = customers.customerid 
group by  sales.customerid,firstname, lastname order by shoes_purchase desc ;

select * from customers;
select count(distinct salesrepid) from sales;

# info about sales representative who sold the items
select sales.salesrepid, firstname, lastname, region, count(sales.salesrepid) as 'product_sold' from sales left join sales_representative 
on sales.SalesRepID= sales_representative.salesrepid
group by sales.salesrepid, firstname, lastname, region;

INSERT INTO products values(56, 56, 'gfyh', 9, 'hero');
  -- delete from products where productid =56;

#  How much time customers done shoping
select customerid, count(customerid) from sales group by customerid order by customerid ;
