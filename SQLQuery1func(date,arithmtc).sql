select DATEFROMPARTS (2023,02,10)

select DATEPART(DAY,GETDATE())
select DATEADD(DAY,5,GETDATE())
select DATEDIFF(YEAR,'2020-02-02',GETDATE())

select DATENAME(MONTH,GETDATE())
select SYSDATETIME();
select DATEPART(QQ,GETDATE())
select DATEPART(DY,GETDATE())
select DATEPART(MONTH,SYSDATETIME());
create function makeupper(@id varchar(50))
returns varchar as 
begin
 return upper(@id)
 end;
 select dbo.makeupper('raahina')

 create function upperfn1(@id varchar(20))
 returns table as
  return  select c_name,c_age from children where c_name = upper (@id);
 
 select * from 
 dbo.upperfn1('ayad');


 select stuff(c_name,2,4,'hello') from children;

 select * from dbo.childrenveiw;
 
 
 with cte as
 (select c_name from children
 ) 
, cte1  as (select c_name,c_age from children join cte on cte1 )
 select * from cte,cte1;
 









