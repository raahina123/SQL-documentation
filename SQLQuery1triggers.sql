--create trigger on insert
create trigger tr_first on children
after insert 
as begin 
insert into children values (1,'helo',2,'dxb')
end

--update
--create trigger tr_second on children
--after update
--as begin 
--update children set c_name = 'vine' where c_id = 1
--end
--ON Customers
CREATE TABLE Customers (
--create trigger tr_new2
--on customers 
--after insert 
--as begin 
--     declare @customer_id int
--	 set @customer_id = (select CustomerId from inserted )
--	 INSERT INTO CustomerLog (logid,CustomerId, LogDate, LogMessage)
  CREATE TABLE Orders (

CREATE TRIGGER tr_update_order_total

INSERT INTO Orders (OrderId, OrderDate, TotalAmount)
select *from orders
INSERT INTO OrderDetails (OrderDetailId, OrderId, ProductName, Quantity, Price)

--  INSERT INTO Customers (CustomerId, FirstName, LastName, Email)

alter table customerlog
alter column logid int null;

select *from customerlog
 end

select *from children

