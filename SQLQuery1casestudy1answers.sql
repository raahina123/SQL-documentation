1.select count(distinct state) as numberofstates from locationtable;
2.select COUNT(typeof) as countofregular from product where typeof = 'regular'
3.select sum(marketing)  from fact where product_id = 1;
4.select MIN(sales) minimumsales from fact
5.select MAX(COGS) from fact
6.select *from product join fact on fact.product_id = product.product_id where product_typ in ('coffee')
7.select *from fact where totalexpences>40
8.with cte as (select SUM(sales) as sumofsales from fact where areacode = 719),
cte1 as (select AVG(sumofsales) avgsales from cte)
select * from cte1;
9.select sum(profit) as total  from fact join locationtable on fact.areacode=locationtable.area_code
where locationtable.state = 'Colorado';
10.with cte as (select sum(inventory) as sumof,product_id from fact group by product_id ),
cte1 as (select AVG(sumof) as avginventory, product_id from cte group by product_id)
select *from cte1
11.select distinct state from locationtable order by state;
12.select avg(budgetmargin) as budgetmargin,product_id from fact group by product_id
having AVG(budgetmargin)>100
13.select SUM(sales) total from fact where date='2010-01-01'
14.select AVG(totalexpences) avgexpence,product_id,date  from fact group by product_id,date
15.select Date, product.product_id, product.product_typ, product, Sales, profit, state, areacode from fact join product
on fact.product_id = product.product_id join locationtable on fact.areacode= locationtable.area_code
16.select sales,row_number() over(order by sales) as rankofsales from fact
17.select state, sum(profit) profit,sum(sales )sales from fact join locationtable on
fact.areacode = locationtable.area_code group by state;
18.select state ,product,sum(profit) profit,sum(sales )sales from fact join locationtable on
fact.areacode = locationtable.area_code join product on product.product_id = fact.product_id 
group by state,product;
19.select sales from fact where sales>(sales*5/100);
20.select MAX(profit) as maxprofit,product.product_id,product_typ from fact join product on
product.product_id=fact.product_id group by product.product_id,product_typ;
21.
create procedure sp_producttype (@id varchar(50)) as  )
(select * from product where product_typ = @id)
go;
exec sp_producttype @id = 'coffee';
22.select totalexpences,  CASE
WHEN totalexpences< 60 THEN  'ITS PROFIT'
WHEN totalexpences >60 then 'its loss'
else 'improve' 
end
as result
 from fact
 22. select totalexpences,IIF(totalexpences>60,'its profit','its lost ') as result from fact
23.select product_id,date,DATEPART(WEEK,CAST(date AS DATE)) AS WEEKS,sum(sales)SALES from 
fact group by ROLLUP(date,DATEPART(WEEK,CAST(date AS DATE)) ,product_id)
24.select areacode from fact
union 
select area_code from locationtable
select areacode from fact
intersect
select area_code from locationtable
25.create function fetchtable(@id varchar(50))
returns table as 
return select * from product where product_typ = @id
select *from  fetchtable('coffee');
26.begin transaction 
update product set product_typ = 'tea'
where product_id = 1 and product_typ = 'coffee'
rollback transaction
select *from product
end;
select @@trancount;
27.select date, product_id, sales from fact where totalexpences between 100 and 200;
28.delete from product where typeof = 'regular';
29.select ASCII(substring(product,1 ,5 ) ) asciivalue from product;


select * from product 
select *from locationtable
select *from fact