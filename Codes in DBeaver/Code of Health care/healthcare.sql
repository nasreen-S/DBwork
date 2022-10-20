----------------------SSIS Final Assessment-----------

--------------------source table-------------
CREATE TABLE Nasreen_FA_Healthdata (
    [PID] float,
    [AGE] float,
    [GENDER] nvarchar(255),
    [CASTE_NAME] nvarchar(255),
    [CATEGORY_CODE] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [SURGERY_CODE] nvarchar(255),
    [SURGERY] nvarchar(255),
    [VILLAGE] nvarchar(255),
    [MANDAL_NAME] nvarchar(255),
    [DISTRICT_NAME] nvarchar(255),
    [PREAUTH_DATE] datetime,
    [PREAUTH_AMT] float,
    [CLAIM_DATE] datetime,
    [CLAIM_AMOUNT] float,
    [HOSP_NAME] nvarchar(255),
    [HOSP_TYPE] nvarchar(255),
    [HOSP_DISTRICT] nvarchar(255),
    [SURGERY_DATE] datetime,
    [DISCHARGE_DATE] datetime,
    [Mortality Y / N] nvarchar(255),
    [MORTALITY_DATE] datetime,
    [SRC_REGISTRATION] nvarchar(255)
)

--truncate table Nasreen_FA_Healthdata

select * from Nasreen_FA_Healthdata




update  Nasreen_FA_Healthdata
set age=55,gender='female',caste_name='BC' where pid=1;



--update Nasreen_FA_Healthdata
--set age=47,caste_name='OC' where pid=1


-----------------------------------target table----------

CREATE TABLE Nasreen_FA_Healthdata_SCD1_trg (
    [PID] float,
    [AGE] float,
    [GENDER] nvarchar(255),
    [CASTE_NAME] nvarchar(255),
    [CATEGORY_CODE] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [SURGERY_CODE] nvarchar(255),
    [SURGERY] nvarchar(255),
    [VILLAGE] nvarchar(255),
    [MANDAL_NAME] nvarchar(255),
    [DISTRICT_NAME] nvarchar(255),
    [PREAUTH_DATE] datetime,
    [PREAUTH_AMT] float,
    [CLAIM_DATE] datetime,
    [CLAIM_AMOUNT] float,
    [HOSP_NAME] nvarchar(255),
    [HOSP_TYPE] nvarchar(255),
    [HOSP_DISTRICT] nvarchar(255),
    [SURGERY_DATE] datetime,
    [DISCHARGE_DATE] datetime,
    [Mortality Y / N] nvarchar(255),
    [MORTALITY_DATE] datetime,
    [SRC_REGISTRATION] nvarchar(255)
)

select * from Nasreen_FA_Healthdata_SCD1_trg

--truncate table Nasreen_FA_Healthdata_SCD1_trg

--truncate table Nasreen_FA_Healthdata_SCD1_trg

----------------------------------------------------------------------------

CREATE TABLE Nasreen_FA_Healthdata_SCD2_trg (
    [PID] float,
    [AGE] float,
    [GENDER] nvarchar(255),
    [CASTE_NAME] nvarchar(255),
    [CATEGORY_CODE] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [SURGERY_CODE] nvarchar(255),
    [SURGERY] nvarchar(255),
    [VILLAGE] nvarchar(255),
    [MANDAL_NAME] nvarchar(255),
    [DISTRICT_NAME] nvarchar(255),
    [PREAUTH_DATE] datetime,
    [PREAUTH_AMT] float,
    [CLAIM_DATE] datetime,
    [CLAIM_AMOUNT] float,
    [HOSP_NAME] nvarchar(255),
    [HOSP_TYPE] nvarchar(255),
    [HOSP_DISTRICT] nvarchar(255),
    [SURGERY_DATE] datetime,
    [DISCHARGE_DATE] datetime,
    [Mortality Y / N] nvarchar(255),
    [MORTALITY_DATE] datetime,
    [SRC_REGISTRATION] nvarchar(255),
    start_date datetime,
    End_date datetime
)

select * from Nasreen_FA_Healthdata_SCD2_trg


alter table Nasreen_FA_Healthdata_SCD2_trg add start_date datetime,End_date datetime;



--drop table Nasreen_FA_Healthdata_trg

--truncate table Nasreen_FA_Healthdata_trg
--truncate table Nasreen_FA_Healthdata_SCD2_trg


-------------------------DB to DB connection--------------

CREATE TABLE Healthcare_DB_to_DB (
    [PID] float,
    [AGE] float,
    [GENDER] nvarchar(255),
    [CASTE_NAME] nvarchar(255),
    [CATEGORY_CODE] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [SURGERY_CODE] nvarchar(255),
    [SURGERY] nvarchar(255),
    [VILLAGE] nvarchar(255),
    [MANDAL_NAME] nvarchar(255),
    [DISTRICT_NAME] nvarchar(255),
    [PREAUTH_DATE] datetime,
    [PREAUTH_AMT] float,
    [CLAIM_DATE] datetime,
    [CLAIM_AMOUNT] float,
    [HOSP_NAME] nvarchar(255),
    [HOSP_TYPE] nvarchar(255),
    [HOSP_DISTRICT] nvarchar(255),
    [SURGERY_DATE] datetime,
    [DISCHARGE_DATE] datetime,
    [Mortality Y / N] nvarchar(255),
    [MORTALITY_DATE] datetime,
    [SRC_REGISTRATION] nvarchar(255)
)

select * from Healthcare_DB_to_DB




--------------------flat file src to DB dst--------------

CREATE TABLE healthcare_ff_DB (
    [PID] varchar(50),
    [AGE] varchar(50),
    [GENDER] varchar(50),
    [CASTE_NAME] varchar(50),
    [CATEGORY_CODE] varchar(50),
    [CATEGORY_NAME] varchar(50),
    [SURGERY_CODE] varchar(50),
    [SURGERY] varchar(50),
    [VILLAGE] varchar(50),
    [MANDAL_NAME] varchar(50),
    [DISTRICT_NAME] varchar(50),
    [PREAUTH_DATE] varchar(50),
    [PREAUTH_AMT] varchar(50),
    [CLAIM_DATE] varchar(50),
    [CLAIM_AMOUNT] varchar(50),
    [HOSP_NAME] varchar(50),
    [HOSP_TYPE] varchar(50),
    [HOSP_DISTRICT] varchar(50),
    [SURGERY_DATE] varchar(50),
    [DISCHARGE_DATE] varchar(50),
    [Mortality Y   N] varchar(50),
    [MORTALITY_DATE] varchar(50),
    [SRC_REGISTRATION] varchar(50)
)

select * from  healthcare_ff_DB

--------------------------------Aggregate table----------

select sum(pid) as sum, avg(age) as avge, 
max(PREAUTH_AMT) as max,min(CLAIM_AMOUNT) as mini
from Nasreen_FA_Healthdata




-----------


