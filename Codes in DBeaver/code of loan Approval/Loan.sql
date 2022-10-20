--------------------task2---------------

----------------------------Loan Approval Task------------


CREATE TABLE Nasreen_FA_LoanApproval(
    [LoanNr_ChkDgt] float,
    [Name] nvarchar(255),
    [City] nvarchar(255),
    [State] nvarchar(255),
    [Zip] float,
    [Bank] nvarchar(255),
    [BankState] nvarchar(255),
    [NAICS] float,
    [ApprovalDate] datetime,
    [ApprovalFY] float,
    [Term] float,
    [NoEmp] float,
    [NewExist] float,
    [CreateJob] float,
    [RetainedJob] float,
    [FranchiseCode] float,
    [UrbanRural] float,
    [RevLineCr] nvarchar(255),
    [LowDoc] nvarchar(255),
    [ChgOffDate] datetime,
    [DisbursementDate] datetime,
    [DisbursementGross] nvarchar(255),
    [BalanceGross] nvarchar(255),
    [MIS_Status] nvarchar(255),
    [ChgOffPrinGr] nvarchar(255),
    [GrAppv] nvarchar(255),
    [SBA_Appv] nvarchar(255)
)

select * from Nasreen_FA_LoanApproval

update Nasreen_FA_LoanApproval set name='fayaz',city='Bangalore',State='Kerala'
where LoanNr_ChkDgt=1000014003;

---------------------------------------target table--------------

-----------------------SCD1 dst-----------------------

CREATE TABLE Nasreen_FA_LoanApproval_SCD1_trg(
    [LoanNr_ChkDgt] float,
    [Name] nvarchar(255),
    [City] nvarchar(255),
    [State] nvarchar(255),
    [Zip] float,
    [Bank] nvarchar(255),
    [BankState] nvarchar(255),
    [NAICS] float,
    [ApprovalDate] datetime,
    [ApprovalFY] float,
    [Term] float,
    [NoEmp] float,
    [NewExist] float,
    [CreateJob] float,
    [RetainedJob] float,
    [FranchiseCode] float,
    [UrbanRural] float,
    [RevLineCr] nvarchar(255),
    [LowDoc] nvarchar(255),
    [ChgOffDate] datetime,
    [DisbursementDate] datetime,
    [DisbursementGross] nvarchar(255),
    [BalanceGross] nvarchar(255),
    [MIS_Status] nvarchar(255),
    [ChgOffPrinGr] nvarchar(255),
    [GrAppv] nvarchar(255),
    [SBA_Appv] nvarchar(255)
)



select * from Nasreen_FA_LoanApproval_SCD1_trg

-----------------------------------------------------SCD2--------------------

CREATE TABLE Nasreen_FA_LoanApproval_SCD2_trg(
    [LoanNr_ChkDgt] float,
    [Name] nvarchar(255),
    [City] nvarchar(255),
    [State] nvarchar(255),
    [Zip] float,
    [Bank] nvarchar(255),
    [BankState] nvarchar(255),
    [NAICS] float,
    [ApprovalDate] datetime,
    [ApprovalFY] float,
    [Term] float,
    [NoEmp] float,
    [NewExist] float,
    [CreateJob] float,
    [RetainedJob] float,
    [FranchiseCode] float,
    [UrbanRural] float,
    [RevLineCr] nvarchar(255),
    [LowDoc] nvarchar(255),
    [ChgOffDate] datetime,
    [DisbursementDate] datetime,
    [DisbursementGross] nvarchar(255),
    [BalanceGross] nvarchar(255),
    [MIS_Status] nvarchar(255),
    [ChgOffPrinGr] nvarchar(255),
    [GrAppv] nvarchar(255),
    [SBA_Appv] nvarchar(255)
)


select * from Nasreen_FA_LoanApproval_SCD2_trg


alter table  Nasreen_FA_LoanApproval_SCD2_trg add Start_date datetime,End_date datetime;

---truncate table Nasreen_FA_LoanApproval_trg

-------------------------flat file src to DB dst------------------
CREATE TABLE Loan_ff_to_DB (
    [LoanNr_ChkDgt] varchar(50),
    [Name] varchar(50),
    [City] varchar(50),
    [State] varchar(50),
    [Zip] varchar(50),
    [Bank] varchar(50),
    [BankState] varchar(50),
    [NAICS] varchar(50),
    [ApprovalDate] varchar(50),
    [ApprovalFY] varchar(50),
    [Term] varchar(50),
    [NoEmp] varchar(50),
    [NewExist] varchar(50),
    [CreateJob] varchar(50),
    [RetainedJob] varchar(50),
    [FranchiseCode] varchar(50),
    [UrbanRural] varchar(50),
    [RevLineCr] varchar(50),
    [LowDoc] varchar(50),
    [ChgOffDate] varchar(50),
    [DisbursementDate] varchar(50),
    [DisbursementGross] varchar(50),
    [BalanceGross] varchar(50),
    [MIS_Status] varchar(50),
    [ChgOffPrinGr] varchar(50),
    [GrAppv] varchar(50),
    [SBA_Appv] varchar(50)
)

Select * from Loan_ff_to_DB

-----------------------------Aggregate table-----------------------------------

select count(LoanNr_ChkDgt)as count_loan,min(ApprovalDate) as minimun_date,
max(ApprovalFY) as maximun_aFY,sum(NoEmp) as sum_emp
from Nasreen_FA_LoanApproval
















