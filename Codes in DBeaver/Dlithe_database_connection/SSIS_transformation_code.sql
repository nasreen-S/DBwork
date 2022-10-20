CREATE table product 
(
p_id int,
p_name varchar(10),
p_cost int,
)

CREATE table xyz1
(
p_id int,
p_name varchar(10),
p_cost int,
)

insert into xyz1 values(10,'pen',20)
insert into xyz1 values(11,'book',30)
insert into xyz1 values(12,'pencil',5)

select * from xyz1

---select DISTINCT p_id from xyz1---

update xyz1 set p_name='eraser',p_cost=5 where p_id=12

delete from xyz1 where  p_id=10

TRUNCATE table xyz1

drop table xyz2

CREATE table xyz2
(
p_id int,
p_name varchar(10),
p_cost int,
)

select * from S_HREMPLOYEES sh 

create table sqldst1
(
id int,
name varchar(20),
age int
)

select * from sqldst1

--TRUNCATE table sqldst1 

create table hremp
(


)

select * from SS_shremployees ss 

select * from LV_HEALTH_CARE lhc 

create table newhealthcare
(


)

select * from newhealthcare;

CREATE table src_product
(
P_no int,
P_name varchar(30),
P_cost float,
)

insert into src_product values(12,'dress',2000)
insert into src_product values(13,'shoes',2500)
insert into src_product values(15,'shampoo',1000)

select * from src_product
select * from trg_product

CREATE table trg_product
(
P_no int,
P_name varchar(30),
P_cost float,
Pro_cost float,
pro_name varchar(30)
)
---insert into trg_product values(12,'dress',2000, ,)
---insert into trg_product values(13,'shoes',2500, ,)
---insert into trg_product values(15,'shampoo',1000, ,)

---select * from trg_product

truncate table trg_product

select * from healthcaresql 

-----------merge and sorting tables concept----------------

create table mergetables
(
 [Row ID] float,
    [Order ID] nvarchar(255),
    [Order Date] datetime,
    [Ship Date] datetime,
    [Ship Mode] nvarchar(255),
    [Customer ID] nvarchar(255),
    [Customer Name] nvarchar(255),
    [Segment] nvarchar(255),
    [Country] nvarchar(255),
    [City] nvarchar(255),
    [State] nvarchar(255),
    [Postal Code] float,
    [Region] nvarchar(255),
    [Product ID] nvarchar(255),
    [Category] nvarchar(255),
    [Sub-Category] nvarchar(255),
    [Product Name] nvarchar(255),
    [Sales] float,
    [Quantity] float,
    [Discount] float,
    [Profit] float

)
select * from mergetables

truncate table mergetables

create table empsql1
(
e_id int,
e_name varchar(20),
e_salary int,
e_dsg varchar(20)
)

insert into empsql1 values(10,'fayaz',20000,'trainee')
insert into empsql1 values(10,'fayaz',20000,'trainee')
insert into empsql1 values(10,'fayaz',20000,'trainee')
insert into empsql1 values(20,'muskan',25000,'engineer')
insert into empsql1 values(20,'muskan',25000,'engineer')
insert into empsql1 values(20,'muskan',25000,'engineer')
insert into empsql1 values(30,'shabana',30000,'developer')
insert into empsql1 values(30,'shabana',30000,'developer')
insert into empsql1 values(30,'shabana',30000,'developer')

select * from empsql1

create table empsql2
(
e_id int,
e_name varchar(20),
e_salary int,
e_dsg varchar(20)
)

insert into empsql2 values(10,'ramija',20000,'trainee')
insert into empsql2 values(10,'ramija',20000,'trainee')
insert into empsql2 values(10,'ramija',20000,'trainee')
insert into empsql2 values(20,'muskang',25000,'engineer')
insert into empsql2 values(20,'muskang',25000,'engineer')
insert into empsql2 values(20,'muskang',25000,'engineer')
insert into empsql2 values(30,'yasif',30000,'developer')
insert into empsql2 values(30,'yasif',30000,'developer')
insert into empsql2 values(30,'yasif',30000,'developer')

select * from empsql2

create table mergesql_12
(
e_id int,
e_name varchar(20),
e_salary int,
e_dsg varchar(20)
)

select * from mergesql_12


truncate table mergesql_12

select * from sortdestination 
------------------------------union 2nd assignment-----------
create table sqlu_3
(
e_id int,
e_name varchar(30),
e_salary float,
e_dgn varchar(20)
)
insert into sqlu_3 values(12,'meghana',25000,'trainee')
insert into sqlu_3 values(13,'ameena',30000,'developer')
insert into sqlu_3 values(14,'saniya',40000,'HR')                     
                     
select * from sqlu_3

create table uempdst
(
e_id int,
e_name varchar(30),
e_salary float,
e_dgn varchar(20)
)

select * from uempdst
--drop table uempdst 
-------------------------union 1st Assignment------------
create table uempdst1
(
e_id int,
e_name varchar(255),
e_salary float,
e_dgn varchar(255)
)


select * from uempdst1
------------------------Union transformation--------------------------
create table U3sql1
(
std_id int,
std_name varchar(30),
std_branch varchar(20),
std_age int
)
 insert into U3sql1 values(12,'fayaz','ECE',21)
 insert into U3sql1 values(13,'vishal','EEE',21)
 insert into U3sql1 values(14,'vinith','cse',21)
 insert into U3sql1 values(15,'varun','mech',21)
 
 select * from U3sql1
 ---------------------2nd table-------------------
create table U3sql2
(
std_id int,
std_name varchar(30),
std_branch varchar(20),
std_age int
)
 insert into U3sql2 values(20,'fayaz','ECE',21)
 insert into U3sql2 values(21,'vishal','EEE',21)
 insert into U3sql2 values(22,'vinith','cse',21)
 insert into U3sql2 values(23,'varun','mech',21)
 
 select * from U3sql2
 ------------------------3rd table---------------
 create table U3sql3
(
std_id int,
std_name varchar(30),
std_branch varchar(20),
std_age int
)
 
 insert into U3sql3 values(30,'fayaz','ECE',21)
 insert into U3sql3 values(31,'vishal','EEE',21)
 insert into U3sql3 values(32,'vinith','cse',21)
 insert into U3sql3 values(33,'varun','mech',21)
 
 select * from U3sql3
 
 -------------split transformation-----------
 -------Assignment 1--------------------------
 create table std_FirstD
 (
 std_id int,
 std_name varchar(255),
 std_marks int,
 std_result varchar(255)
 )
  --drop table std_FirstD
 ------split2-------------------------------
 create table std_pass
 (
 std_id int,
 std_name varchar(255),
 std_marks int,
 std_result varchar(255)
 )
  ---drop table std_pass
 ----------------split3-------------------------

create table std_Fail
 (
 std_id int,
 std_name varchar(255),
 std_marks int,
 std_result varchar(255)
 )

--- drop table std_Fail
select * from std_FirstD

select * from std_pass

select * from std_Fail

-----------------Assignment 2------------------
------------sales details----------------------
create table y2020
(
s_no int,
s_name varchar(25),
s_cost int,
s_year int
)

create table yn2021
(
s_no int,
s_name varchar(25),
s_cost int,
s_year int
)

create table y2022
(
s_no int,
s_name varchar(25),
s_cost int,
s_year int
)

select * from y2020

select * from yn2021

select * from y2022
------------------------lookup transformation--------

CREATE TABLE lookupstore(
    [Row ID] float,
    [Order ID] varchar(50),
    [Order Date] varchar(50),
    [Ship Date] varchar(50),
    [Ship Mode] varchar(50),
    [Customer ID] varchar(50),
    [Customer Name] varchar(50),
    [Segment] varchar(50),
    [Country] varchar(50),
    [City] varchar(50),
    [State] varchar(50),
    [Postal Code] varchar(50),
    [Region] varchar(50),
    [Product ID] varchar(50),
    [Category] varchar(50),
    [Sub-Category] varchar(50),
    [Product Name] varchar(50),
    [Sales] varchar(50),
    [Quantity] varchar(50),
    [Discount] varchar(50),
    [Profit] varchar(50),
    [upper_Ship Mode] varchar(50),
    [upper_Customer Name] varchar(50),
    [upper_Segment] varchar(50)
)

select * from lookupstore

drop table lookupstore
-------------------------------------
select * from lookup_n

Update Lookup_n 
set e_name=?,
e_salary=?,
e_dsg=?
where e_id=?

-----------------------------------------

select * from lookup_store

---------------------------------------

select * from lookupstore_2
 truncate table lookupstore_2

update lookupstore_2
set ship Mode= ?,
Customer Name= ?,
Segment= ?
where 
rowID= ?

------------
select * from lookup_NF

update lookup_NF
set shipMode=?,
CustomerName=?,
Segment=?
where 
rowID=?
-------------------multiple files src loading to single dst---------

select * from emp_NS

select distinct city from lookup_NF

select distinct segment from lookup_NF



























