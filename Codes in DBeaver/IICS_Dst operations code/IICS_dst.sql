--------------IICS Destination Location---------------

select * from Atm_details--------src---------

select * from Atm_details_dst------------------dst--------------

select * from stud


insert into stud values (15,'saniya',25,'Trainee',45000),
(18,'yasif',20,'ECE','000'),(19,'muskan',23,'java',38000)


select * from stud_roll_10

select * from stud_roll_20

select * from stud_salary

create table dep_NF
(
dep_id int,
dep_name varchar(20),
dsg varchar(20),
salary int
)

insert into dep_NF values(12,'health','Trainee',25000),(13,'bank','Manager',35000),
(14,'education','Teacher',25000),(20,'health','doctor',45000),(25,'IT','Trainee',37000)
,(23,'IT','HR',33000)

select * from dep_NF
----drop table dep_nf

select * from dep_NF_dst


truncate table dep_nf_dst

select * from empsql

select * from empsql_dst

create table empsql_dst 
(
id int primary key,
name varchar(20),
salary int,
age int,
designation varchar(20)
)

insert into empsql_dst values(20,'fayaz',25000,23,'Trainee'),
(21,'fayaz1',35000,24,'testing'),(23,'nasreen',45000,22,'database'),
(25,'ameena',55000,25,'hr')

select * from empsql_dst

 --drop table empsql_dst

select * from employee

select * from empl_salary_dst1

select * from empl_salary_dst2

select * from emp_router1

select * from emp_router2

select * from emp_router3

-----------------after runing iics---------------------------
create table NF_emp_SCD
(
emp_id int,
emp_name varchar(20),
emp_salary float,
dept_id int
)

insert into NF_emp_SCD values(100,'Jennifer',9000,10),(101,'Micheal',8000,10)

update NF_emp_scd set emp_salary=25000 where emp_id=100;

select * from NF_emp_SCD

 --drop table NF_emp_SCD
 

CREATE TABLE NF_dim_Employees
   (       
    Employee_Key     int,
    Employee_Id      int,
    Name             Varchar(20),
    Salary           int,
    Department_Id    int,
    Start_Date       Date,
    End_Date         Date,
    Checksum         Varchar(50)
    );

select * from NF_dim_employees

--truncate table NF_dim_employees

---insert into dim_employees values(1,200,'')







-----------------------------Nasreen final Assessment------------------

---------------IICS SCD1 src Table-------------
CREATE TABLE IICS_SCD2_healthcare_src(
    [PID] float,
    [GENDER] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [PREAUTH_AMT] float,
    [CLAIM_AMOUNT] float,
    [HOSP_NAME] nvarchar(255)
)

select * from IICS_SCD2_healthcare_src

update IICS_SCD2_healthcare_src
set Category_name='ABC',gender='male' where PID = 1;

-----------------------IICS SCD1 trg table---------------------
CREATE TABLE FA_IICS_SCD1_healthcare_trg (
    [T_key] int,
    [T_PID] int,
    [T_GENDER] nvarchar(255),
    [T_CATEGORY_NAME] nvarchar(255),
    [T_PREAUTH_AMT] float,
    [T_CLAIM_AMOUNT] float,
    [T_HOSP_NAME] nvarchar(255),
    [T_checksum] nvarchar(255)
 
)

select * from FA_IICS_SCD1_healthcare_trg

--truncate table FA_IICS_SCD1_healthcare_trg

--drop table  FA_IICS_SCD1_healthcare_trg


---drop table IICS_SCD1_healthcare_trg

--------------------------------------------------------

-------------------------------IICS SCD2 src table----------------------


CREATE TABLE IICS_SCD2_healthcare_src(
    [PID] float,
    [GENDER] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [PREAUTH_AMT] float,
    [CLAIM_AMOUNT] float,
    [HOSP_NAME] nvarchar(255)
)

 update IICS_SCD2_healthcare_src
 set category_name='ABC',gender='male' where PID = 1;

select * from IICS_SCD2_healthcare_src

---------------------------IICS SCD2 trg table--------------------


--------------------------------------------------------------

--------------------------------
CREATE TABLE FA_IICS_SCD2_healthcare_trg (
    [T_key] int,
    [T_PID] int,
    [T_GENDER] nvarchar(255),
    [T_CATEGORY_NAME] nvarchar(255),
    [T_PREAUTH_AMT] float,
    [T_CLAIM_AMOUNT] float,
    [T_HOSP_NAME] nvarchar(255),
    [T_SURGERY_DATE] datetime,
    [T_DISCHARGE_DATE] datetime,
    [T_checksum] nvarchar(255)
 
)

select * from FA_IICS_SCD2_healthcare_trg







--truncate table IICS_SCD2_healthcare_trg

--drop table IICS_SCD2_healthcare_trg


-----------------------------------------------IICS Aggregators------------

-----------------healthcare table--------------------------------------

select * from Nasreen_FA_Healthdata


select * from IICS_Aggregate_healthcare

--drop table IICS_Aggregate_healthcare

-------------------------------Loan Approval---------------------

select * from Nasreen_FA_LoanApproval

select * from IICS_Aggregate_loanApproval

---truncate  table IICS_Aggregate_loanApproval

---------------------------cinema ticket----------------------------

select * from Nasreen_FA_Cinematicket

select * from IICS_Aggregate_cinematicket



---------------------------data replication-----------

select * from Nasreen_FA_cinematicket


--select * from IICS_replication_cinematicket


--truncate Table IICS_Aggregate_cinematicket

select * from SF_CINEMANASREEN_FA_CINEMATICKET











