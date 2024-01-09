select * from programmer;
select * from studies;
select * from software;

1.select MAX(develomentcost) as maximumdevelopmentcost from software group by langdevl having langdevl= 'pascal';
2.select * from software where softwarecost*softwaresold >2000;
3.select name,dob from programmer where MONTH(dob) = MONTH(cast(GETDATE() as date)) ;

4.select name,sum(develomentcost) as cost from software group by name ;

5.select name,sum(softwaresold*softwarecost) as salesvalue from software group by name;
6.select COUNT(softwaresold),name from software group by name;
7.select MAX(develomentcost) as maximumcost ,MIN(develomentcost) as minimumcost,name from software group by name;
8.select COUNT(course) as numberofcouses,avg(coursecost) as averagecost ,splace from studies group by splace ;
9.select splace, COUNT(name) as numberofstudents from studies group by splace;
10.select software.name,studies.splace from software inner join studies on software.name = studies.name;
11.select software.name,COUNT(devlprojname) as projectcount, min(coursecost) as lessfeecourse,studies.splace
from software
inner join studies on software.name = studies.name
group by software.name,studies.splace;

12.select AVG(salary)as salary, software.develomentcost as salescost from programmer
inner join software on programmer.name= software.name
group by software.develomentcost having develomentcost>50000
