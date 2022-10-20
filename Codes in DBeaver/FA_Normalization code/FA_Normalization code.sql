---------------------SQL task----------
-------------------module 1------------

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
create table Hospital_details_1
(
H_id int foreign key references Healthcare_domain_FA(id),
H_name varchar(30),
Doctor_name varchar(40) primary key,
H_location varchar(40),
H_zipcode int,
H_Number bigint
)

insert into Hospital_details_1 values(1,'Vims Hospital','Dr.jayesh','Ballari',123424,9045235643),
(2,'SDM Hospital','Dr.ramesh','Bangalore',908763,7845250891),
(3,'BBA Hospital','Dr.sudha','Raichur',583121,4532671850),
(4,'VIMS Hospital','Dr.bhopal','Indore',234121,4532789021),
(5,'SB Hospital','Dr.satish','Siruguppa',340189,3241563421),
(6,'Bhavana Hospital','Dr.sanjiv','Koppal',340202,7834012167),
(7,'Madhusudhan Hospital','Dr.Ravi','Belgum',890765,3421565340),
(8,'VIMS Hospital','Dr.somanath','coorge',342156,4572359087),
(9,'Sanvi Hospital','Dr.harish','tumkur',342178,4532897650),
(10,'Bafna hospital','Dr.suma','madikari',342167,4532897623),
(11,'Mallya Hospital','Dr.meghana','manvi',673421,8954238967),
(12,'Mallya Hospital','Dr.rizkin','Mysore',890756,4521314509),
(13,'SB hospital','Dr.uma','Adoni',342132,5667686909),
(14,'Madhu Hospital','Dr.Saniya','Gangavati',342132,9078543401),
(15,'BBA Hospital','Dr.sumita','Hydrabad',346758,0989670921),
(16,'R R Hospital','Dr.Ahmed','Hospet',567830,9045324567),
(17,'A M Hospital','Dr.sanvi','Mangalore',231314,6743210908),
(18,'S K Hospital','Dr.kaveri','indore',563421,9078453212),
(19,'Beneka Hospital','Dr.santhosh','chikmangalore',674532,0978563423),
(20,'Sridurga Hospital','Dr.usha','solapur',674521,0989784563),
(21,'VIMS Hospital','Dr.chandru','Ahmadabad',453121,9007670068),
(22,'johns Hospital','Dr.joseph','mumbai',674532,0908780011),
(23,'Government Hospital','Dr.kalpana','Delhi',560948,9006768012),
(24,'Sukhi Hospital','Dr.shivani','Kurnool',453212,0978453245),
(25,'R R Hospital','Dr.mahesh','Sindhanor',456789,0980007865)

select * from Hospital_details_1

--truncate table Hospital_details_1

---drop table hospital_details1


Create table Doctor_details
(
D_name varchar(40) foreign key references Hospital_details_1(Doctor_name),
D_Specialization varchar(30),
D_city varchar(30),
D_Hospital varchar(30),
D_age int
)

insert into Doctor_details values ('Dr.Gaoutam','Dermatology','Ballari','Vims Hospital',46),
('Dr.ramesh','Neurology','Siruguppa','SDM Hospital',38),
('Dr.sudha','Orthopedics','Bangalore','BBA Hospital',34),
('Dr.bhopal','Orthopedics','Mangalore','VIMS Hospital',34),
('Dr.usha','Cardiolagist','koppal','Adithya Hospital',36),
('Dr.shivani','gynaecology','Hospet','Bhavana Hospital',38),
('Dr.mahesh','gastroenterology','Chikmangalore','VIMS Hospital',38),
('Dr.joseph','Neurology','Siruguppa','Aditya Hospital',38),
('Dr.suma','gynaecology','Hospet','Bhavana Hospital',38),
('Dr.kaveri','gynaecology','Hospet','VIMS Hospital',38)


select * from Doctor_details

----truncate table Doctor_details

----------------------------------------------


create table Patient_details_1
(
P_id int foreign key references Healthcare_domain_FA(id),
P_name varchar(30),
P_age int,
P_gender varchar(30),
P_city varchar(30),
P_State varchar(30),
P_number bigint
)

insert into Patient_details_1 values (1,'veena',20,'female','Ballari','Karnataka',2343567809),
(2,'ramesh',57,'male','Hospet','UP',3459873421),
(3,'mehesh',45,'male','Bangalore','karnataka',4321097865),
(4,'madhu',56,'male','Mangalore','karnataka',3421563478),
(5,'kumar',47,'male','Siruguppa','karnataka',0989674321),
(6,'giri',48,'male','Manvi','karnataka',2321675432),
(7,'Anil',35,'male','Koppal','karnataka',7856432134),
(8,'madhusudhan',39,'male','mumbai','maharashtra',3425678909),
(9,'Ahmad',40,'male','pune','maharashtra',3432561209),
(10,'padma',50,'female','solapur','maharashtra',3421567809),
(11,'pooja',25,'female','Aurangabad','maharashtra',5432896708),
(12,'kaveri',24,'female','jaipur','rajasthan',4532108967),
(13,'siri',34,'female','indore','',3421675342),
(14,'guru',48,'male','delhi','delhi',3432907865),
(15,'padma',22,'female','Gulbarga','karnataka',3421670978)


select * from Patient_details_1


---truncate table Patient_details1

---drop table Patient_details1

----------------------------------------------------


create table treatment_type1
(
T_id int foreign key references Healthcare_domain_FA(id),
T_name varchar(30),
T_checkup_type varchar(30),
T_price float,
T_Durationindays int
)

insert into treatment_type1 values (1,'Anemia','Hemoglobin Test',5000,28),
(2,'cancer','MRI',20000,12),
(3,'maleria','blood test',2000,15),
(4,'Anemia','blood test',1500,5),
(5,'Heart','MRI',5000,17),
(6,'asthama','spiyrometre',3000,30),
(8,'Cardiac attack','ECG',4500,45),
(9,'Dengu','Blood test',1000,35),
(10,'migrain','MRI',5000,20)

select * from treatment_type1


--drop table treatment_type1
----------------------------------------------------


create table medicine_details_1
(
D_id int foreign key references Healthcare_domain_FA(id),
Drug_name varchar(30),
Administration_route varchar(30),
M_expdate datetime,
M_costper_10Tablet int
)

insert into medicine_details_1 values (1,'feosol','oral','12-02-2023',250),
insert into medicine_details_1 values (2,'Azithromycin','oral','09-12-2025',450),
insert into medicine_details_1 values (3,'Tivicay','oral','02-08-2026',560),
insert into medicine_details_1 values (4,'Rifampin','oral','12-28-2023',360),
insert into medicine_details_1 values (5,'Chloroquine','oral','04-27-2025',120),
insert into medicine_details_1 values (6,'Ampicillin','oral','11-25-2024',346),
insert into medicine_details_1 values (7,'Eszopiclone','oral','10-23-2024',432),
insert into medicine_details_1 values (8,'Ciprofloxacin','oral','07-24-2023',550),
insert into medicine_details_1 values (9,'entecavir','oral','12-15-2026',370),
insert into medicine_details_1 values (10,'acetaminophen','oral','05-22-2025',780)


select * from medicine_details_1 

--truncate table medicine_details_1  

---drop table medicine_details_1 


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


-------------------------------------------task 2 using DDL,DML,DCL------------------

----------------------------------------DDL commands--------------------------------

select * from Nasreen_FA_Healthdata 

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

--------------------------------------------Carshipment--------

-------------------------DDL commands-----------------

select * from SSRS_carshipment_trg

alter table SSRS_carshipment_trg add new_column int;

ALTER TABLE SSRS_carshipment_trg  DROP column new_column;

truncate table  SSRS_carshipment_trg

drop table SSRS_carshipment_trg 

------------------------DML commands---------------
select * from SSRS_carshipment_trg

insert into  SSRS_carshipment_trg  (supplierid,supplieraddress,suppliername) values (1001,'ABC','XYZ');









update  SSRS_carshipment_trg set productid=5505 where supplierid=1

delete from  SSRS_carshipment_trg where supplierid=8



-------------------------DQL commands---------------

select * from SSRS_carshipment_trg










































