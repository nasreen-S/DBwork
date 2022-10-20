----------------Final assessment excel to sql transformation------

CREATE TABLE healthsql_trg (
    [DRG ID] float,
    [DRG Definition] nvarchar(255),
    [Provider Id] float,
    [Provider Name] nvarchar(255),
    [Provider Street Address] nvarchar(255),
    [Provider City] nvarchar(255),
    [Provider State] nvarchar(255),
    [Provider Zip Code] float,
    [Hospital Referral Region (HRR) Description] nvarchar(255),
    [Total Discharges] float,
    [Average Covered Charges] float,
    [Average Total Payments] float,
    [Average Medicare Payments] float
)

select * from healthsql_trg

--truncate table healthsql_trg

select * from emp_n1

select * from emp_trg

update emp_trg set name='saniya'
where id='20'



----------------

select * from emp_n1

select * from emp_trg


update emp_n1 set city='sgp',dsg='junior' where id=12








create table empN1_trg
(
id int,
name varchar(30),
salary int,
city varchar(30),
dsg varchar(30),
SD datetime,
ED datetime
)

select * from empN1_trg
























