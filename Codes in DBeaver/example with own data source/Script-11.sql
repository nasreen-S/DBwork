-- Creation of Table
create table dept(
dept_id int primary key,
dept_Name varchar(50) not null
);

--Insertion of values
insert into dept values
(1,'HR'),(2,'IT'),(3,'Design'),(4,'Finance');

select * from dept

-- Creating Employee Table
create table employee(
emp_id int primary key,
Name varchar(50) unique,
dept_id int foreign key references dept(dept_id),
email varchar(50) default 'company@email.com',
Age int check(age>21)
);

insert into employee values (1,'Anitha',1,'Anitha@evry.com',22);
insert into employee values (2,'yasif',3,'yasif@evry.com',22);
insert into employee (emp_id,name,dept_id,age) values (3,'Pallavi',4,25);
insert into employee values (4,'suma',3,'suma@evry.com',23);

--drop table dept;
---drop table employee;

delete from dept where dept_id=3;

select * from employee;

----------------REFERENCIAL INTEGRITY------
alter table employee drop constraint FK_emp_dept_id

alter table employee add constraint FK_emp_dept_id foreign key (dept_id) 
references dept(dept_id) on delete cascade;


select * from employee;
select * from dept;

delete from dept where dept_id=3;


----------------------------------------------
create Table stud
(
roll_no int,
name varchar(20),
age int,
branch varchar(20)
)

insert into stud values(22,'nasreen',22,'science'),
(10,'fayaz',15,'tenth'),(13,'sanam',18,'ARTS'),(11,'rozmin',19,'commerce')

select * from stud

select age from stud;---to select a particular column
select age,name from stud;

select roll_no from stud order by roll_no ASC---To select a particular column in order using ASC or DESC
select roll_no from stud order by roll_no DESC;
select * from stud order by roll_no,age ASC---to select two column

select name from stud where name like '%a%'---command to select name which contains a letter in it
-------%charector% is used to select multiple words which contain same charecetor---

select name from stud where name like 'n%'----displays output with names starting with 'n' char only

select name from stud where name not like 'n%'


select name from stud where name not like '%n%'

alter table stud add salary int;----to add new column in table

update stud set salary=22000 where roll_no=22;--to add values to new added column for particular row

update stud set salary=20000;

select max(age) as A,min(roll_no) as B,avg(age) as C from stud---to display aggregates

select top 3 * from stud--to select top data from table

select replace ('nasreen','s','$') from stud  where roll_no=22;----replace a string with where condition

select * from stud




























