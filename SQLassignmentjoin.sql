1.select COUNT(name) as countofprogrammer,knownlanguage1 from programmer group by knownlanguage1 
having knownlanguage1 not in ('pascal','c');
2.select * from  programmer where knownlanguage1 not in('cobol','clipper','pascal');
3.select langdevl,AVG(develomentcost)as avgdevcost,AVG(softwarecost*softwaresold)as avgsoftwarecost,
AVG(softwarecost/softwaresold) as avgcopycost from software group by langdevl;
4.select programmer.name,count(devlprojname) as projnumber from programmer inner join software on
programmer.name=software.name  group by programmer.name ;
5.select programmer.name,programmer.sex,programmer.salary,software.devlprojname from programmer inner join
software on programmer.name = software.name where sex = 'f' and salary > (select MAX(salary) from programmer
where sex = 'male');
6.select programmer.salary,programmer.name,programmer.knownlanguage1,studies.course from 
programmer inner join software on programmer.name = software.name inner join studies on 
software.name=studies.name where exists(select MAX(softwarecost*softwaresold) from software);
7.select studies.splace from studies,software group by splace,software.develomentcost having 
MAX(develomentcost) = (select MAX(develomentcost) from software);
8.select name from programmer where name not in (select name from software);
9.select * from software where langdevl not in(select knownlanguage1 from programmer) 
and langdevl not in (select knownlanguage2 from programmer);
10.select * from software where exists((select dob,sex from programmer where
YEAR(dob) <1965 and sex = 'male' ) union (select dob,sex from programmer where sex = 'f' and YEAR(dob)>1975));
11.select COUNT(devlprojname) as projnumber,count(softwaresold)as softwarenumber,sum(softwarecost*softwaresold) 
as salesvalue,software.name,studies.splace from software,studies group by software.name,studies.splace;
12.select * from software where exists(select sex,salary from programmer where software.name=programmer.name
and  sex = 'male' and salary >3000);
13.select name from programmer where sex = 'f' and salary > (select MAX(salary) from programmer where
sex = 'male' );
14.select name from programmer where sex = 'male' and salary <(select avg(salary) from programmer where sex = 'f');
15.select langdevl,name from software group by name,langdevl having MAX(softwarecost*softwaresold) = 
(select(MAX(softwarecost*softwaresold))from software) or MIN(softwarecost*softwaresold) = 
(select MIN(softwarecost*softwaresold) from software) ;
16.select devlprojname from software where softwaresold < (select  AVG(softwaresold) from software);
17.select devlprojname from software where develomentcost = ( select MAX(develomentcost) from software where 
langdevl = 'pascal');
18.select softwaresold from software where develomentcost - (softwarecost*softwaresold)  = (select 
(MIN(develomentcost - (softwarecost*softwaresold)) )from software);
19.select langdevl,devlprojname from software where softwarecost*softwaresold = (select MAX(softwarecost*softwaresold) 
from software) ;
20.select name from software where softwaresold = (select MIN(softwaresold) from software);
21.select course from studies where coursecost < (select avg(coursecost)+1000 from studies ) and 
coursecost> (select AVG(coursecost)-1000 from studies);
22.select course,splace from studies where coursecost < (select AVG(coursecost) from studies);
23.select splace,course from studies where coursecost = (select MAX(coursecost) from studies);
24.select max(coursecost) from studies;
select * from software;
select * from programmer;
select * from studies;
