insert into studies values('raahina','pragathi','c',4000);
insert into programmer values('anil','1991-02-21','2023-02-01','male','python','nothing',4000)
insert into programmer values('devi','1991-02-21','2023-02-01','f','cobol','nothing',150000);
insert into software values('devi','cleaninfservices','cobol',200,40000,4);
insert into programmer values('sahana','1991-02-21','2023-02-01','f','cobol','nothing',100000)

 13.select distinct knownlanguage1 from programmer
 where  knownlanguage1 not in (select langdevl from software)
 union
 select distinct knownlanguage2 from programmer where knownlanguage2 not in (select langdevl from software);
 14.select sum(softwarecost*softwaresold) as value,splace as location  from software join studies on software.name = studies.name
 group by studies.splace  ;
 15.select * from software where langdevl = 'c' and exists(
 select programmer.knownlanguage1,programmer.knownlanguage2,programmer.sex,studies.splace from  programmer,studies
 where programmer.sex = 'f' AND programmer.knownlanguage1 = software.langdevl and studies.splace = 'pragathi');
 16. select * from software where langdevl = 'pascal' and exists(select sex,name from programmer where sex = 'f' and
 programmer.name = software.name);
 17. select knownlanguage1 from programmer where knownlanguage1 = (select MAX(knownlanguage1) from programmer);
 18.select name,develomentcost from software where develomentcost = (select MAX(develomentcost) from software);
 19.select devlprojname,develomentcost from software where develomentcost = (select MAX(develomentcost) from software);
 20. select name from programmer where knownlanguage1 = 'cobol' and salary = (select MAX(salary)from programmer);
 21. select name,salary from programmer;
 22. select COUNT(devlprojname),langdevl from software group by langdevl having langdevl not in ('c','c++');
 23. select devlprojname,AVG(develomentcost-softwarecost) from software group by devlprojname;
 24.select name,SUM(softwarecost) as sumofsoftwarecost,SUM(develomentcost) as sumofdevcost,SUM(develomentcost-(softwarecost*softwaresold)) 
 as sumofrecovered 
 from software group by name having sum(develomentcost)> SUM(softwarecost*softwaresold)   ;
  25. select name from programmer where knownlanguage1 = 'cobol' and salary = (select MAX(salary)from programmer);

 select * from software;
 select * from programmer;
select * from studies;
