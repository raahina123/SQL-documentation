--CREATE TABLE SourceProducts(
--    ProductID        INT,
--    ProductName        VARCHAR(50),
--    Price            DECIMAL(9,2)
--)
--GO

--INSERT INTO SourceProducts(ProductID,ProductName, Price) VALUES(1,'Table',100)
--INSERT INTO SourceProducts(ProductID,ProductName, Price) VALUES(2,'Desk',80)
--INSERT INTO SourceProducts(ProductID,ProductName, Price) VALUES(3,'Chair',50)
--INSERT INTO SourceProducts(ProductID,ProductName, Price) VALUES(4,'Computer',300)
--GO

--CREATE TABLE TargetProducts(
--    ProductID        INT,
--    ProductName        VARCHAR(50),
--    Price            DECIMAL(9,2)
--)
--GO

--INSERT INTO TargetProducts(ProductID,ProductName, Price) VALUES(1,'Table',100)
--INSERT INTO TargetProducts(ProductID,ProductName, Price) VALUES(2,'Desk',180)
--INSERT INTO TargetProducts(ProductID,ProductName, Price) VALUES(5,'Bed',50)
--INSERT INTO TargetProducts(ProductID,ProductName, Price) VALUES(6,'Cupboard',300)
--GO


--SELECT * FROM SourceProducts
--SELECT * FROM TargetProducts


--MERGE TargetProducts AS Target
--USING SourceProducts    AS Source



--drop table dbo.SourceProducts;
--drop table dbo.targetproducts;
--ON Source.ProductID = Target.ProductID

---- For Inserts
--WHEN NOT MATCHED BY Target THEN
--    INSERT (ProductID,ProductName, Price) 
--    VALUES (Source.ProductID,Source.ProductName, Source.Price)

---- For Updates
--WHEN MATCHED THEN UPDATE SET
--    Target.ProductName    = Source.ProductName,
--    Target.Price        = Source.Price;

---- For Deletes
----WHEN NOT MATCHED BY Source THEN
----    DELETE;
--create table sourceprod (pid int ,pname varchar(50), price decimal(5,2));
--select * from sourceprod;
--insert into sourceprod values(1,'bed',100);
--insert into sourceprod values(2,'coat',100);
--insert into sourceprod values(3,'tv',100);
--insert into sourceprod values(4,'sofa',10);
--insert into sourceprod values(5,'lap',1002);

--create table targetpro ( pid int,pname varchar(50), price decimal(5,2))

--insert into targetpro values(1,'bed',100);
--insert into targetpro values(2,'coat',100);
--insert into targetpro values(3,'bed',10);
select * from sourceprod;
select * from targetpro;

merge dbo.targetpro as tar
using sourceprod as sou
on sou.pid = tar.pid

 when not matched by tar then
 insert (pid,pname,price) values (sou.pid,sou.pname,sou.price);
