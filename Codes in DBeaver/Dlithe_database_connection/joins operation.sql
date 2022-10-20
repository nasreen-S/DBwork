---joins-----------
create table customer_NF
(
cust_id int,
cust_name varchar(100),
cust_mobile varchar(50),
cust_country varchar(50)
);

create table order_NF
(
ord_id int,
cust_id int,
ord_date date
);

select * from customer_NF

select * from order_NF

insert into customer_NF values (12,'nasreen',1234253401,'india'),(13,'nasreen1',1234253401,'usa')
,(15,'muskan',1234253401,'india'),(22,'fayaz',1234253401,'india'),(120,'ameena',1234253401,'india')

insert into order_NF values(20,12,'02-03-2022'),(22,12,'01-09-2022'),(23,13,'10-09-2022'),(24,13,'01-09-2022')
,(25,15,'03-09-2022'),(26,15,'06-09-2022'),(10,22,'07-09-2022'),(27,22,'08-09-2022'),(20,23,'09-09-2022')
,(28,23,'04-09-2022')

--truncate table order_NF

-------------inner join------------------------------

select c.cust_id,c.cust_name,c.cust_mobile,c.cust_country,od.ord_id,od.ord_date
from customer_NF as c
inner join order_NF as od 
on c.cust_id=od.cust_id;

---------------left join------------

select c.cust_id,c.cust_name,c.cust_mobile,c.cust_country,od.ord_id,od.ord_date
from customer_NF as c
left join order_NF as od 
on c.cust_id=od.cust_id;

--------------------right join-------------

select c.cust_id,c.cust_name,c.cust_mobile,c.cust_country,od.ord_id,od.ord_date
from customer_NF as c
right join order_NF as od 
on c.cust_id=od.cust_id;

------------------full join-----------

select c.cust_id,c.cust_name,c.cust_mobile,c.cust_country,od.ord_id,od.ord_date
from customer_NF as c
full join order_NF as od 
on c.cust_id=od.cust_id;

-------------------------cross join----------
select c.cust_id,c.cust_name,c.cust_mobile,c.cust_country,od.ord_id,od.ord_date
from customer_NF as c,order_NF as od 

---------Assignment joins--------------

create table emp_NF
(
emp_id int,
name varchar(50),
zipcode varchar(10)
)

create table address_NF
(
zipcode varchar(10),
city varchar(20),
country varchar(20)
)

insert into emp_NF values(1,'nasreen',583121),(2,'fayaz',583101),(3,'aisha',583041),(4,'suma',580402)

insert into address_NF values(583121,'siruguppa','india'),(583101,'ballari','india')
,(581234,'xyz','india'),(580102,'xyz1','india')

select * from emp_NF

select * from address_NF
------------inner join-----------------------------
select e.emp_id,e.name,e.zipcode,a.city,a.country 
from emp_NF as e
inner join address_NF as a 
on e.zipcode=a.zipcode;
----------------left join--------------------

select e.emp_id,e.name,e.zipcode,a.city,a.country 
from emp_NF as e
left join address_NF as a 
on e.zipcode=a.zipcode;

-----------------right join--------------------
select e.emp_id,e.name,e.zipcode,a.city,a.country 
from emp_NF as e
right join address_NF as a 
on e.zipcode=a.zipcode;

-------------------full  join------------------

select e.emp_id,e.name,e.zipcode,a.city,a.country 
from emp_NF as e
full join address_NF as a 
on e.zipcode=a.zipcode;

------------------cross join-----------------
(4*4=16 columns)
select e.emp_id,e.name,e.zipcode,a.city,a.country 
from emp_NF as e,address_NF as a 

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

---drop table employee_NF
------------------dep table--------
create table dep_NF
(
dep_id int primary key,
dep_name varchar(20)
)

insert into dep_NF values(123,'xyz'),(120,'xyz1')

select * from dep_NF

--alter table employee_NF add constraint e_id
--foreign key(dep_id) references dep_NF(dep_id)

-----truncate table employee_NF-----

select * from dlithe.dbo.sequence_N1


select * from dlithe.dbo.sqlu_3 

sp_columns @sqlu='news'







