/*create table employee(eid int primary key,
ename varchar(20) not null,
department varchar(20),
salary int
);*/
--insert into dbo.employee values(1,'shajir','ot',10000);
--insert into dbo.employee values(2,'aadith','ward',1500);
--insert into dbo.employee values(3,'shaji','nurse',130);
--insert into dbo.employee values(4,'sanu','ot',10000);
--insert into dbo.employee values(5,'ram','ot',10000);

--select * from dbo.employee where ename like 's%' ;
--select eid from dbo.employee where salary like '130_';
--select min(salary) from dbo.employee where salary between 1000 and 15000;
--select avg(salary) from dbo.employee where ename like 's%';
--select distinct(department) from dbo.employee;
--select top 3 salary  from dbo.employee;
--alter table dbo.employee add experience varchar(20);
--select * from employee where not salary=1300 ;
--delete from dbo.employee where ename like 'r%'  ;
--update dbo.employee set salary = 15000 where department = 'ot';
--alter table dbo.employee alter column ename varchar(20) null;

/*create table patientdetails(
pid int not null,
pname varchar(20) not null,
place varchar(20) ,
department varchar(20)

);*/
--alter table dbo.patientdetails
--add constraint pk_pid primary key (pid);
--alter table dbo.patientdetails
--add unique(pid);
--alter table dbo.patientdetails
--drop constraint pk_pid;
--alter table dbo.patientdetails
--add eid int ;
--use parctice;
--select * from dbo.patientdetails;
--insert into dbo.patientdetails values(1,'rahina','dubai','ot');
--insert into dbo.patientdetails values(2,'aadhi','auh','pediatrics');
--insert into dbo.patientdetails values(3,'shajirfriend','auh','ot');
--insert into dbo.patientdetails values(4,'ammu','auh','ot');
--insert into dbo.patientdetails values(5,'ammu','auh','ot',1);
--insert into dbo.patientdetails values(6,'aami','rak','ot',1);
--insert into dbo.patientdetails values(7,'reav','auh','nurse',4);
--insert into dbo.patientdetails values(8,'muthu','auh','ot',5);
--select dbo.employee.ename,dbo.employee.department,dbo.patientdetails.pname
--from dbo.employee
--right join dbo.patientdetails on dbo.employee.department = dbo.patientdetails.department;

--select dbo.employee.ename,dbo.employee.department from dbo.employee
--union
--select dbo.patientdetails.pname,dbo.patientdetails.department from dbo.patientdetails;
--alter table dbo.patientdetails
--add constraint pk_pid primary key(pid)
--alter table dbo.patientdetails
--drop constraint pk_pid;
--alter table dbo.patientdetails
--add constraint fk_eid foreign key (eid) references dbo.employee(eid);
--alter table dbo.patientdetails 
--add constraint df_department default 'ot' for department;
--alter table dbo.patientdetails
--drop constraint df_department;

--alter table dbo.patientdetails
--add constraint ch_eid check(eid<13);
--alter table dbo.patientdetails
--drop constraint ch_eid;
--create index list
--on dbo.patientdetails(eid,department);

/*drop index list;*/
--create view raahinadetails
--as 
--select * from dbo.patientdetails where pname = 'raahina';

--drop view dbo.raahinadetails;
--create procedure selectallpatients
--as
--select * from dbo.patientdetails
--go;

--select count(pid),department from dbo.patientdetails
--group by department order by department;

--select count(pid),department from dbo.patientdetails
--group by department having count(pid)<5 order by department;

--select *from employee
--where exists ( select * from patientdetails where employee.eid = patientdetails.eid)









