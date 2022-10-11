---------------------SQL task----------module 1------------

create table Healthcare_domain_FA
(
id int primary key,
Hospital_details varchar(300),
Patient_details varchar(300) ,
treatment_type varchar(300),
Medicines_details varchar(300)
)

insert into Healthcare_domain_FA values(1,'Vims Hospital','Veena','anamia','Folic acid'),
(2,'SDM Hospital','Ravi','HIV','Tivicay'),
(3,'Abhaya Hospital','lisa','Pneumonia','Azithromycin'),
(4,'Jyothi Hospital','Gouri','Tuberculosis','Rifampin'),
(5,'Sridurga Hospital','kumarswami','Malaria','Chloroquine'),
(6,'Ashmini Hospital','Supprabha','Meningitis','Ampicillin'),
(7,'Primary Healthcare','Somaiya','insomia','Eszopiclone'),
(8,'Laxmi Clinic','Goopi','Typhoid fever','Ciprofloxacin'),
(9,'Somanath Hospital','Gopika','Hepatitis B','entecavir'),
(10,'Madhusudhan Hospital','Girish','Measles','acetaminophen'),
(11,'sanvi Hospital','ramesh','flu','zanamivir'),
(12,'Kulkarni Hospital','Rohit','Backache','carbamazepine'),
(13,'R R Hospital','Govindha','nausea','Aprepitant'),
(14,'Sadhana Hospital','Tabasum','cough','Mucinex'),
(15,'Adithya Hospital','Rajesh','sunburn','benzocaine'),
(16,'Bhavana Hospital','K Veena','asthama','Fluticasone'),
(17,'Sudha Hospital','Gitika','Acidity','Dexlansoprazole'),
(18,'Pushparaj hospital','raj','diabetes','sulfonylureas'),
(19,'Beneka Hospital','Bhavana','small pox','brincidofovir'),
(20,'Bafna hospital','Gaurav','cancer','lanreotide acetate'),
(21,'pinto Hospital','Taimur','Constipation','Magnisium citerate'),
(22,'Government Hospital','Sahana','colic pain','bicyclomine hydrochloride'),
(23,'K K Hospital','tunga','Diarrehea','loperamyde'),
(24,'A M Hospital','Daya','piles','Analpram'),
(25,'Chinmayya Hospital','Sita','Insomia','Eszopiclone'),
(26,'S K Hospital','sumita','sore throat','benzocaine'),
(27,'Sukhi Hospital','Sukhi','Blood clotting','rivaroxaban'),
(28,'johns Hospital','seema','chest pain','Nitroglycerin'),
(29,'Marthas Hospital','sumita T','Rabies','Imovax'),
(30,'Mallya Hospital','jiya','Dyslexia','piracetam')


select * from Healthcare_domain_FA

---drop table healthcare_domain_FA

-----------------------------------------
create table Hospital_details1
(
H_id int foreign key references Healthcare_domain_FA(id),
Doctor_name varchar(40) not null,
H_location varchar(40) 
)

insert into Hospital_details1 values(1,'Dr.Gaoutam','Ballari'),
(2,'Dr.ramesh','Bangalore'),
(3,'Dr.sudha','Raichur'),
(4,'Dr.bhopal','Indore'),(5,'Dr.satish','Siruguppa'),
(6,'Dr.sanjiv','Koppal'),(7,'Dr.Ravi','Belgum'),
(8,'Dr.somanath','coorge'),(9,'Dr.harish','tumkur'),
(10,'Dr.suma','madikari'),(11,'Dr.meghana','manvi'),
(12,'Dr.rizkin','Mysore'),(13,'Dr.uma','Adoni'),
(14,'Dr.Saniya','Gangavati'),(15,'Dr.sumita','Hydrabad'),
(16,'Dr.Ahmed','Hospet'),(17,'Dr.sanvi','Mangalore'),
(18,'Dr.kaveri','indore'),(19,'Dr.santhosh','chikmangalore'),
(20,'Dr.usha','solapur'),(21,'Dr.chandru','Ahmadabad'),
(22,'Dr.joseph','mumbai'),(23,'Dr.kalpana','Delhi'),
(24,'Dr.shivani','Kurnool'),(25,'Dr.mahesh','Sindhanor')


select * from Hospital_details1

---drop table Hospital_details1

----------------------------------------------


create table Patient_details1
(
P_id int foreign key references Healthcare_domain_FA(id),
P_name varchar(30),
P_age int,
gender varchar(30)
)

insert into Patient_details1 values(1,'veena',20,'male'),
(2,'Dr.ramesh',57,'male'),
(3,'Dr.mehesh',45,'male'),
(4,'Dr.madhu',56,'male'),
(5,'Dr.kumar',47,'male'),
(6,'Dr.giri',48,'male'),
(7,'Dr.Anil',35,'male'),
(8,'Dr.madhusudhan',39,'male'),
(9,'Dr.Ahmad',40,'male'),
(10,'Dr.padma',50,'female')

select * from Patient_details1


---drop table Patient_details1

----------------------------------------------------


create table treatment_type1
(
T_id int foreign key references Healthcare_domain_FA(id),
T_name varchar(30),
T_checkup_type varchar(30),
T_price float
)

insert into treatment_type1 values(1,'Anemia','Hemoglobin Test',5000),
(2,'cancer','MRI',20000),
(3,'maleria','blood test',2000),
(4,'Anemia','blood test',1500),
(5,'Heart','MRI',5000),
(6,'asthama','spiyrometre',3000),
(8,'Cardiac attack','ECG',4500),
(9,'Dengu','Blood test',1000),
(10,'migrain','MRI',5000)


select * from treatment_type1

--------drop table treatment_type1
----------------------------------------------------


create table medicine_details
(
D_id int foreign key references Healthcare_domain_FA(id),
Drug_name varchar(30),
Administration_route varchar(30)
)

insert into medicine_details values(1,'feosol','oral'),
(2,'Azithromycin','oral'),
(3,'Tivicay','oral'),
(4,'Rifampin','oral'),
(5,'Chloroquine','oral'),
(6,'Ampicillin','oral'),
(7,'Eszopiclone','oral'),
(8,'Ciprofloxacin','oral'),
(9,'entecavir','oral'),
(10,'acetaminophen','oral')


select * from medicine_details 

----drop table medicine_details 



--------------------------------Views-----------------------

create view view_table
as 
select * from Healthcare_domain_FA

select * from view_table



------------------------------------------joins in  tables-------------------
---------------------------inner joins----------------------
---------------------------------main table and hospital table joins--------------

select F.id,F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,A.H_id,A.Doctor_name,A.H_location
from Hospital_details1 as A
inner join Healthcare_domain_FA as F
on A.H_id=F.id

---------------------------------main table and Patient_details1 joins------

select F.id,F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,B.P_id,B.P_name,B.P_age,B.Gender
from Patient_details1 as B
inner join Healthcare_domain_FA as F
on B.P_id=F.id

-----------------------------------------main table and treatment_type1------------

select F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,C.T_name,C.T_checkup_type,C.T_price
from treatment_type1 as C
inner join Healthcare_domain_FA as F
on C.T_id=F.id

----------------------------------------main table and  medicine_details-------

select F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,D.Drug_name,D.Administration_route
from medicine_details as D
inner join Healthcare_domain_FA as F
on D.D_id=F.id

-------------------------------------------------left joins of all tables----------


select F.id,F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,A.H_id,A.Doctor_name,A.H_location
from Hospital_details1 as A
left join Healthcare_domain_FA as F
on A.H_id=F.id

------

select F.id,F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,B.P_id,B.P_name,B.P_age,B.Gender
from Patient_details1 as B
left join Healthcare_domain_FA as F
on B.P_id=F.id

------

select F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,C.T_name,C.T_checkup_type,C.T_price
from treatment_type1 as C
left join Healthcare_domain_FA as F
on C.T_id=F.id

--------

select F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,D.Drug_name,D.Administration_route
from medicine_details as D
left join Healthcare_domain_FA as F
on D.D_id=F.id

------------------------------------------right joins-------------------------

select F.id,F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,A.H_id,A.Doctor_name,A.H_location
from Hospital_details1 as A
right join Healthcare_domain_FA as F
on A.H_id=F.id

------

select F.id,F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,B.P_id,B.P_name,B.P_age,B.Gender
from Patient_details1 as B
right join Healthcare_domain_FA as F
on B.P_id=F.id

------

select F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,C.T_name,C.T_checkup_type,C.T_price
from treatment_type1 as C
right join Healthcare_domain_FA as F
on C.T_id=F.id

--------

select F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,D.Drug_name,D.Administration_route
from medicine_details as D
right join Healthcare_domain_FA as F
on D.D_id=F.id

------------------------------------------full join-------------------

select F.id,F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,A.H_id,A.Doctor_name,A.H_location
from Hospital_details1 as A
full join Healthcare_domain_FA as F
on A.H_id=F.id

------

select F.id,F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,B.P_id,B.P_name,B.P_age,B.Gender
from Patient_details1 as B
full join Healthcare_domain_FA as F
on B.P_id=F.id

------

select F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,C.T_name,C.T_checkup_type,C.T_price
from treatment_type1 as C
full join Healthcare_domain_FA as F
on C.T_id=F.id

--------

select F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,D.Drug_name,D.Administration_route
from medicine_details as D
full join Healthcare_domain_FA as F
on D.D_id=F.id

--------------------------------------------------Cross join------------------
select F.id,F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,A.H_id,A.Doctor_name,A.H_location
from Hospital_details1 as A,Healthcare_domain_FA as F

-----------------

select F.id,F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,B.P_id,B.P_name,B.P_age,B.Gender
from Patient_details1 as B,Healthcare_domain_FA as F

------------------

select F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,C.T_name,C.T_checkup_type,C.T_price
from treatment_type1 as C,Healthcare_domain_FA as F

------------------------

select F.Hospital_details,F.Patient_details,F.treatment_type,
F.Medicines_details,D.Drug_name,D.Administration_route
from medicine_details as D,Healthcare_domain_FA as F


-------------------------------------------task 2 using DDL,DML,DCL------------------

----------------------------------------DDL commands--------------------------------

select * from Nasreen_FA_Helthdata 

alter table Nasreen_FA_Healthdata add new_column int;

ALTER TABLE Nasreen_FA_Healthdata  DROP column new_column;

truncate table  Nasreen_FA_Healthdata 

drop table Nasreen_FA_Healthdata 

--------------DML commands-----------------
select * from Nasreen_FA_Healthdata 

insert into Nasreen_FA_Healthdata (pid,age) values (301,23)

update Nasreen_FA_Healthdata set age=55 where pid=301

delete from Nasreen_FA_Healthdata where pid=301

----------------------DQL command---------------

select * from Nasreen_FA_Healthdata 


-------------------------car shipment-----------------------

------------------------------DDL commands-------------------

select * from SSRS_carshipment_trg

alter table SSRS_carshipment_trg  add new_column int;

ALTER TABLE  SSRS_carshipment_trg DROP column new_column;

truncate table SSRS_carshipment_trg

drop table SSRS_carshipment_trg

---------------------------------------DML commands-------------------

select * from SSRS_carshipment_trg

insert into SSRS_carshipment_trg  (supplieraddress,suppliername) values ('ABC','XYZ')

update SSRS_carshipment_trg set productid=5505 where supplierid=1

delete from SSRS_carshipment_trg where supplierid=7;





































