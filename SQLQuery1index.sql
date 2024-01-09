--select *
--            from  sysobjects
--           where  id = object_id('Product')
--            and   type = 'U'
			
			SELECT (ColumnNames) 
FROM (TableName) 
PIVOT
 ( 
   AggregateFunction(ColumnToBeAggregated)
   FOR PivotColumn IN (PivotColumnValues)
 ) AS (Alias) //Alias is a temporary name for a table



 create table IndexDemonstration (
  Id                   int, 
   FirstName            nvarchar(40)         not null,
   LastName             nvarchar(40)         not null,
   City                 nvarchar(40)         null,
   Country              nvarchar(40)         null,
   Phone                nvarchar(20)         null
   ) 

   --insert into IndexDemonstration select * from [dbo].[Customer]
   select * from IndexDemonstration
   create Index FirstIndex on IndexDemonstration (Id asc)

--UNPIVOT 
SELECT (ColumnNames) 
FROM (TableName) 
PIVOT
 ( 
   AggregateFunction(ColumnToBeAggregated)
   FOR PivotColumn IN (PivotColumnValues)
 ) AS (Alias) //Alias is a temporary name for a table


 Create Table geeksforgeeks 
( 
CourseName nvarchar(50), 
CourseCategory nvarchar(50),
Price int
) 

Insert into geeksforgeeks  values('C', 'PROGRAMMING', 5000) 
Insert into geeksforgeeks  values('JAVA', 'PROGRAMMING', 6000) 
Insert into geeksforgeeks  values('PYTHON', 'PROGRAMMING', 8000) 
Insert into geeksforgeeks  values('PLACEMENT 100', 'INTERVIEWPREPARATION', 5000) 

SELECT * FROM geeksforgeeks