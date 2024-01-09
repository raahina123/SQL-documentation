1.select *from DimCustomer
select *from FactResellerSales

2.select * from FactResellerSales where year(OrderDate) in (2011) and 
datename(month,OrderDate) in ('may');
4.select SUM(SalesAmount) totalsales from FactResellerSales where year(OrderDate) in (2011) and 
datename(month,OrderDate) in ('may');
5.select SUM(SalesAmount) totalsales ,datename(month,OrderDate) months  from FactResellerSales 
where year(OrderDate) in (2011) group by datename(month,OrderDate) order by sum(SalesAmount) desc; 
6.select SUM(SalesAmount) totalsales from FactResellerSales join DimCustomer on 
DimCustomer.CustomerKey = FactResellerSales.CustomerPONumber
where DimCustomer.FirstName = 'gustavo' and LastName='achong';