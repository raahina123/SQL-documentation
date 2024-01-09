select *from employee
1. select First_name as name from employee
2. select UPPER(Last_name) name from employee
3. select distinct Department  from employee
4.select SUBSTRING(Last_name,1,3) from employee
5.select distinct Department as dept,LEN(Department) as length from employee
6.select First_name+' '+Last_name as name from employee
select CONCAT(First_name,Last_name) name from employee
7.select * from employee order by First_name asc;
8.select * from employee order by First_name asc,Department desc;
9.select * from employee where First_name  in ('veena','karan')
10 select * from employee where Department = 'admin'
11.select First_name from employee where First_name like '%v%'
12.select * from employee where Salary between 100000 and 500000
13. select * from employee where YEAR(Joining_date)='2020' and DATENAME(MONTH,Joining_date)= 'february'
14.select CONCAT(First_name,Last_name)NAME  from employee where Salary BETWEEN 50000 AND 100000
15.select DEPARTMENT,COUNT(*) POEPLE from employee GROUP BY Department ORDER BY COUNT(*) DESC
16.select * from employee JOIN employee_title ON EMPLOYEE.Employee_id = employee_title.Effective_date where
employee_title.Employee_title =  'MANAGER'
17.SELECT COUNT(*) DUPLICATE FROM employee GROUP BY First_name HAVING COUNT(*)>1
18.SELECT * FROM employee WHERE Employee_id%2 = 1
19.SELECT * INTO NEWTABLE FROM employee 
20.SELECT SALARY,DENSE_RANK() OVER (ORDER BY SALARY DESC) AS TOPSALARY FROM employee 
WHERE Salary IN (SELECT MAX(Salary) FROM employee)
SELECT TOP 2 SALARY FROM employee WHERE Salary IN (SELECT MAX(Salary) FROM employee) ORDER BY Salary DESC
SELECT * FROM (SELECT SALARY,DENSE_RANK() OVER(ORDER BY SALARY DESC) AS NTH FROM employee) S WHERE NTH = 2
SELECT TOP 2 SALARY FROM employee WHERE Salary  IN (SELECT MAX(Salary) FROM employee)
21.SELECT * FROM employee WHERE Salary IN (SELECT COUNT(*) FROM employee GROUP BY Salary HAVING COUNT(*) = 1)
22.SELECT TOP 50 percent * FROM employee
23.select Department,COUNT(*) poepple from employee group by Department having COUNT(*) <4
24.select Department,COUNT(*) poepple from employee group by Department 
25.select First_name,max(salary) salary from employee  group by First_name order by salary desc
26.select avg(Salary) avg,Department from employee group by Department
27.select First_name,employee_bonus.Bonus_amount  from employee join employee_bonus on 
Employee_id = employee_bonus.Employee_ref_id where employee_bonus.Bonus_amount in (select MAX(Bonus_amount) from employee_bonus)
SELECT * FROM employee_bonus
