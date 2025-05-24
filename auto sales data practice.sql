DROP database sales_order_combined;
select *
from `auto sales data`;
-- aggregate functions
-- find total sales
select round(sum(SALES),0) as total_sales
from  `auto sales data`;
select *
from  `auto sales data`;
-- find the total sales for the different productline
select round(sum(sales),0) as total_sales, PRODUCTLINE
from  `auto sales data`
group by PRODUCTLINE;

-- find the total sales for the different status
select sum(sales) as total_sales,status
from  `auto sales data`
group by status;

-- find total priceeach for the different productline and customers
select round(sum(priceeach),0) as total_price,productline,customername
from `auto sales data`
group by productline,customername;

-- count the number of customers
select count(customername) as count_customer
from `auto sales data`;
select distinct customername
from `auto sales data`;
select count(distinct customername) as count_customer
from `auto sales data`;

-- find the count of customers in different countries
select count(distinct customername) as count_customer,country
from `auto sales data`
group by country;

-- find the count of customers in the uk
select count(distinct customername) as count_customer,country
from `auto sales data`
where country ="uk"
group by country;

-- having
-- find the total sales for the different status
select sum(sales) as total_sales,status
from  `auto sales data`
group by status
having sum(sales) >190000 and status ="shipped";
select *
from  `auto sales data`;

-- where
select *
from  `auto sales data`
where PRODUCTLINE = "vintage cars";

select priceeach,QUANTITYORDERED
from `auto sales data`;





