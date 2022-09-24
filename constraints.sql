create table emp_N1
(
id int,
name varchar(20),
salary int,
city varchar(20),
dsg varchar(20),
start_date date,
end_date date
)

insert into emp_N1 values(13,'ameena',45000,'Mangalore','hr','2022-09-23 ','2022-12-23'),
(12,'nasreen',40000,'banglore','Trainee','2022-09-21 ','2022-12-24')

update emp_N1 set name='yasif',dsg='devops' where id=12

select * from emp_N1

--truncate table emp_N1

create table emp_trg
(
id int,
name varchar(20),
salary int,
city varchar(20),
dsg varchar(20),
start_date date,
end_date date
)

select * from emp_trg
--truncate table emp_trg
--drop table dst


-----------------constraints Assignment-----------

create table employee_NF
(
e_id int not null,
e_name varchar(20) primary key,
e_age int check(e_age>=20),
join_date date default getdate()
)

insert into employee_NF(e_id,e_name,e_age,join_date) values(123,'saniya',24,'2022-04-26'),
(121,'fayaz',24,'2022-08-22')
,(120,'nasreen',21,'2022-09-21')
,(122,'ameena',20,'2022-03-26')

select * from employee_NF

------------constraints created--------------------









