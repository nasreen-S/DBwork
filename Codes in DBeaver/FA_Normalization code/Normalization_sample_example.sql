
CREATE TABLE dep
(
D_name varchar(30),
D_id int ,
D_address varchar(30)
)

insert into dep values('fayaz',102,'xyz')
insert into dep values('varun',112,'rty')
insert into dep values('vinith',212,'dfg')

select * from dep

---drop table dep
--------------------------------------------
CREATE TABLE emp
(
E_name varchar(30),
E_salary int,
E_id int,
primary key(D-id),
foreign key(E_id) references dep(E-id)
)
 insert into emp values('varun',20000,102)
 insert into emp values('tarun',25000,103)

select * from emp

-------------------------------------------------------

create table location
(
L_pinnumber int not null unique,
L_name varchar(30) unique,
primary key(L_pinnumber)
)

insert into location values(123456,'bellary')
insert into location values(654321,'sgp')

select * from location

-----------------------------views------------------
create table emp_1 
(
e_id int,
e_name varchar(20),
)
insert into emp_1 values(20,'saniya'),(21,'yasif')

select * from emp_1

---------------------------------------
create view vw_employee 
as
select * from dep

insert into dep values ('nasreen',20,'global village')

 select * from dep
 
  ---truncate table dep
 --------------------
------------joins in views-----------
select d.D_name,d.D_address,em.e_name
from dep as d
inner join emp_1 as em 
on d.D_id=em.e_id
----------right join---------------
select d.D_name,d.D_address,em.e_name
from dep as d
right join emp_1 as em 
on d.D_id=em.e_id
---------------left join------
select d.D_name,d.D_address,em.e_name
from dep as d
left join emp_1 as em 
on d.D_id=em.e_id
--------full join---------
select d.D_name,d.D_address,em.e_name
from dep as d
full join emp_1 as em 
on d.D_id=em.e_id
---------------cross join---------
select d.D_name,d.D_address,em.e_name
from dep as d,emp_1 as em

---------------rank,dense rank,row number using table-----

create table emp_2n
(
e_id int,
e_name varchar(20),
e_salary float
)

insert into emp_2n values(1,'nasreen',20000),(1,'nasreen',20000),(1,'nasreen',20000),
(2,'fayaz',30000),(2,'fayaz',30000),(2,'fayaz',30000),(3,'saniay',35000),(3,'saniay',35000)

select * from emp_2n

select e_id,
       e_name,
       e_salary,
       row_number() over (order by e_id) as column1,
      RANK() over (order by e_id) as column2,
      dense_rank() over (order by e_id) as column3
from emp_2n

-------------------normalization-----------------------
----------------------first normalization-----------------

create table No_emp
(
id int,
e_name varchar(20),
e_mobile varchar(15),
primary key(id)
)
insert into No_emp values(12,12,12,'nasreen',9123456780)
select * from No_emp

create table N1_std
(
id int,
std_name varchar(20),
primary key(id)
)
insert into N1_std values(12,'fayaz'),(13,'yasif') 

select * from N1_std

------------------------2nd normalization----------------

create table N2_emp
(
e_id int primary key,
e_name varchar(20),
jobtitle varchar(20)
)

insert into N2_emp values(1,'nasreen','hr'),(2,'saniya','trainee'),(3,'yasif','developer')

select * from N2_emp

create table N2_jobtitle
(
job_id int primary key,
jobtitle varchar(20),
)
insert into N2_jobtitle values(1,'hr'),(2,'trainee'),(3,'developer')

select * from N2_jobtitle

------------------------------------3rd normalization--------------------

create table N3_student
(
std_id int primary key,
std_name varchar(20),
std_add varchar(20)
)
insert into N3_student values(123456,'nasreen','ballari'),
(234156,'fayaz','banglore'),
(654321,'yasif','sgp')

select * from N3_student

create table N3_subject
(
sub_id int primary key,
subject varchar(30)
)

insert into N3_subject values(123456,'sql'),(234156,'html'),(654321,'java')

select * from N3_subject

---------------slowly changing dimension-------------
create table emp_N1
(
id int,
name varchar(20),
salary int
)

insert into emp_N1 values(10,'nasreen',20000),(20,'fayaz',25000),(30,'yasif',30000)

select * from emp_N1

 update  emp_N1 set name='ameena'where id=30
--drop table emp_N1

create table empN1_trg
(
id int,
name varchar(20),
salary int
)

--drop table empN1_trg

select * from empN1_trg












