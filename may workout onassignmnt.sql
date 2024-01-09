
with 
cte as (select First_name,COUNT(*) as poeple from employee group by First_name),
 ct as (select First_name from cte group by First_name,poeple having poeple in (select MAX(poeple) from cte))
select * from  ct