create table product (
product_id int primary key,
product_typ varchar(50),
product varchar(50),
typeof varchar(50) 
)
create table locationtable (
area_code int primary key,
state varchar(50),
market varchar(50),
market_size varchar(50)
)
create table fact(
date date,
product_id int ,
profit int,sales int,margin int,COGS int,totalexpences int,marketing int,inventory int,budgetprofit int,budgetCOGS int,budgetmargin int ,
budgetsales int ,
areacode int 
)
alter table fact
add  area_code int;

insert into Product values (1, 'Coffee' , 'Amaretto' , 'Regular' )
insert into Product values (2, 'Coffee' ,'Columbian','Regular')
insert into Product values (3,'Coffee','Decaf Irish Cream','Decaf')
insert into Product values (4,'espresso','Caffe Latte','Regular')
insert into Product values (5,'espresso','Caffe Mocha','Regular')
insert into Product values (6,'espresso','Decaf Espresso','Decaf')
insert into Product values (7,'espresso','Regular Espresso','Regular')
insert into Product values (8,'Herbal Tea','Chamomile','Decaf')
insert into Product values (9,'Herbal Tea','Lemon','Decaf')

insert into locationtable 
select 203,	'Connecticut',	'East',	'Small Market'
select 206,	'Washington',	'West'	,'Small Market'
select 209,	'California',	'West'	,'Major Market'
select 210,	'Texas','South','Major Market'
select 212,	'New York',	'East',	'Major Market'
select 213,	'California',	'West',	'Major Market'
select 214,	'Texas'	,'South'	,'Major Market'
select 216,	'Ohio',	'Central',	'Major Market1';
insert into locationtable values (217,	'Illinois',	'Central'	,'Major Market'),
(224,	'Illinois',	'Central',	'Major Market'),
(225,	'Louisiana'	,'South',	'Small Market'),
(234,	'Ohio',	'Central',	'Major Market'),
(239,	'Florida',	'East'	,'Major Market'),
(253,	'Washington',	'West'	,'Small Market'),
(254,	'Texas'	,'South',	'Major Market'),
(262,	'Wisconsin',	'Central',	'Small Market'),
(281,	'Texas',	'South',	'Major Market'),
(303,	'Colorado',	'Central'	,'Major Market'),
(305,	'Florida'	,'East',	'Major Market'),
(309,	'Illinois',	'Central',	'Major Market'),
(310,	'California',	'West',	'Major Market'),
(312,	'Illinois'	,'Central'	,'Major Market'),
(314,	'Missouri',	'Central',	'Small Market'),
(315,	'New York',	'East'	,'Major Market'),
(318,	'Louisiana'	,'South',	'Small Market'),
(319,	'Iowa'	,'Central',	'Small Market'),
(321,	'Florida',	'East'	,'Major Market'),
(323,	'California',	'West',	'Major Market'),
(325,	'Texas',	'South',	'Major Market'),
(330,	'Ohio',	'Central',	'Major Market'),
(337,	'Louisiana',	'South',	'Small Market'),
(339,	'Massachusetts',	'East',	'Major Market'),
(347,	'New York',	'East',	'Major Market'),
(351,	'Massachusetts',	'East'	,'Major Market'),
(352,	'Florida'	,'East',	'Major Market'),
(360,	'Washington',	'West',	'Small Market'),
(361,	'Texas',	'South',	'Major Market'),
(386,	'Florida',	'East',	'Major Market'),
(405,	'Oklahoma',	'South',	'Small Market'),
(407,	'Florida',	'East',	'Major Market'),
(408,	'California',	'West'	,'Major Market'),
(409,	'Texas'	,'South',	'Major Market'),
(413,	'Massachusetts',	'East',	'Major Market'),
(414,	'Wisconsin',	'Central',	'Small Market'),
(415,	'California',	'West'	,'Major Market'),
(417,	'Missouri',	'Central'	,'Small Market'),
(419,	'Ohio'	,'Central',	'Major Market'),
(425,	'Washington'	,'West'	,'Small Market'),
(430,	'Texas'	,'South',	'Major Market')
select *from fact
insert into fact values

  ('1/1/2010',	8,	99,	341,	171,	170,	72,	47,	1091,	110,	140,	160,	300,	970),
( '1/1/2010',	9,	0,	150,	87,	63,	87	,57,	435,	20,	50,	80,	130,	719),
('1/1/2010',	10,	33,	140,	80,	60,	47,	19,	336,	40,	50,	70,	120,	970),
('1/1/2010'	,11,	17,	130,	72,	58,	55,	22,	338,	20,	40,	70,	110,	719),
( '1/1/2010',	12,	36,	140,	76,	64,	40,	19,	965,	40,	50,	70,	120,303),
( '1/1/2010'	,2,	111,	345,	201,	144,	90,	47,	862,	130,	150,	210,	360,	217)

insert into fact values
('1/1/2010'	,3,87,	234,	139,	95,	52,	30,	608,	100,	100,	140,	240,	309),
('1/1/2010'	,5,	203,	546,	312,	234,	109,	77,	1310,	260,	270,	370,	640,309),
('1/1/2010'	,6,	140,	456,	228,	228,	88,	63,	1459,	180,	260,	270,	530,	630),
( '1/1/2010'	,8,	95,	219,	130,	89,	35,	24,	777,	100,	70,	120,	190,	312),
('1/1/2010'	,9,	68,	190,	107,	83,	39,	27,	623,	60,	70,	90,	160,	630),
('1/1/2010'	,10,	101,	234,	139,	95,	38,	26,	821,	100,	80,	120,	200,	773),
('1/1/2010'	,11,	53,	134,	80,	54,	27,	15,	456,	50,	40,	70,	110,	217),
('1/1/2010',	12,	54,	180,	108,	72,	54,	23,	558,	40,	60,	90,	150,	708),
( '1/1/2010'	,1,	11,	45,	27,	18,	16,	5,	821,	20,	10,	30,	40,	319),
( '1/1/2010'	,2,	5,	62,	34,	28,	29,	8,	965,	20,	20,	40,	60,	641),
('1/1/2010'	,3,	12,	54,	31,	23,	19,	7,	623,	20,	20,	30,	50,	712),
( '1/1/2010'	,5,	11,	43,	26,	17,	15,	4,	777,	30,	10,	40,	50,	563),
('1/1/2010'	,6,	10,	43,	26,	17,	16,	4,	777,	30,	10,	40,	50,	563),
( '1/1/2010'	,8,	202,546,312,234,110,77,	1310,200,200, 280	,480,641),
('1/1/2010'	,9,	86,	234,	139	,95,	53,	30	,608,	90,	80,	120	,200,	563),
('1/1/2010'	,11,	141,456,	228,	228,	87,	63,	1459,	140,	190,	210,	400,	712),
( '1/1/2010',	12,175,	546,	301	,245,	126,	93,	1419,	160,	210,	270,	480,	319),
('1/1/2010'	,2,	39,	190,	105,	85,	66,	32,	494,	40,	90,	100,	190,	636),
('1/1/2010'	,3,	47,	170,	92,	78,	45,	24,	965,	50,	80,	90,	170,	573),
('1/1/2010'	,13,	-4,	76,	42,	34,	46,	12,	197,	0,	20,	40,	60,	417),
('1/1/2010'	,5,	48,	123,	73,	50,	25,	14,	821,	70,	50,	90,	140,	573),
('1/1/2010'	,6,	45,	114,68	,46	,23	,12	,777,60	,50	,80	,130,660),
('1/1/2010'	,8,	-11,90,	53,	37,	64,	34,	261,	0,	30,	40,	70,	573)
--select '1/1/2010'	,9,	-39,	99,	11,	88,	50,	27,	525,	-20	,70	,10,	80,	314
--select '1/1/2010'	,11,	9	,82,	47	,35,	38,	11	,196,	10	,30,	40,	70,	314
--select '1/1/2010'	,12,-9	,65	,36	,29,	45,	11,	169,	-10,	20,	30,	50,	573
--select '1/1/2010'	,1,	34,	140,	80,	60,	46	,19,	336,	50,	60,	80,	140,	740
--select '1/1/2010'	,2,	42,	140,	83,	57,	41,	18,	364,	50,	60	,80,	140,	614
--select '1/1/2010'	,3,	0,	150,	87,	63,	87,	57,	435,	20,	60,	90,	150,	614

select * from product
select *from locationtable
select *from fact