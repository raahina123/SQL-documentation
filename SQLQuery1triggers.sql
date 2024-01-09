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
--ON Customers--AFTER INSERT, UPDATE, DELETE--AS--BEGIN--    -- code to execute after any combination of INSERT, UPDATE, and DELETE operations--END
CREATE TABLE Customers (    CustomerId INT PRIMARY KEY,    FirstName VARCHAR(50),    LastName VARCHAR(50),    Email VARCHAR(100));CREATE TABLE CustomerLog (    LogId INT PRIMARY KEY,    CustomerId INT,    LogDate DATETIME,    LogMessage VARCHAR(200));The "Customers" table contains customer information, including a unique identifier "CustomerId", first name, last name, and email address.The "CustomerLog" table is used to track changes made to the "Customers" table. It contains a unique identifier "LogId", the customer ID "CustomerId" of the customer whose information was changed, the date and time of the change "LogDate", and a log message "LogMessage" indicating what type of change was made.
--create trigger tr_new2
--on customers 
--after insert 
--as begin 
--     declare @customer_id int
--	 set @customer_id = (select CustomerId from inserted )
--	 INSERT INTO CustomerLog (logid,CustomerId, LogDate, LogMessage)--    VALUES (2,@customer_id , GETDATE(), 'New customer added')--END
  CREATE TABLE Orders (    OrderId INT PRIMARY KEY,    OrderDate DATE,    TotalAmount DECIMAL(10, 2));CREATE TABLE OrderDetails (    OrderDetailId INT PRIMARY KEY,    OrderId INT FOREIGN KEY REFERENCES Orders(OrderId),    ProductName VARCHAR(50),    Quantity INT,    Price DECIMAL(10, 2));

CREATE TRIGGER tr_update_order_totalON OrderDetailsAFTER INSERT, UPDATEASBEGIN    DECLARE @OrderId INT    -- Get the order ID from the inserted or updated row    SELECT @OrderId = OrderId FROM inserted    -- Update the total amount for the order in the Orders table    UPDATE Orders    SET TotalAmount = (        SELECT SUM(Quantity * Price)        FROM OrderDetails        WHERE OrderId = @OrderId    )    WHERE OrderId = @OrderIdEND

INSERT INTO Orders (OrderId, OrderDate, TotalAmount)VALUES (1, '2023-03-01', 0);
select *from orders
INSERT INTO OrderDetails (OrderDetailId, OrderId, ProductName, Quantity, Price)VALUES (1, 1, 'Product A', 2, 10.00),       (2, 1, 'Product B', 3, 20.00);

--  INSERT INTO Customers (CustomerId, FirstName, LastName, Email)--VALUES (1, 'John', 'Doe', 'johndoe@example.com');

alter table customerlog
alter column logid int null;

select *from customerlog
 end

select *from children


