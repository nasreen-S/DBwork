SELECT * from dlithe.dbo.S_HREMPLOYEES 

select * from dlithe.dbo.S_HREMPLOYEES 
WHERE DEPARTMENT_ID  != '50';


select * from dlithe.dbo.S_HREMPLOYEES 
WHERE DEPARTMENT_ID  <> 50;


select * from dlithe.dbo.S_HREMPLOYEES 
WHERE DEPARTMENT_ID BETWEEN 50 AND 60;


select * from dlithe.dbo.S_HREMPLOYEES 
WHERE FIRST_NAME = 'john' OR LAST_NAME  ='urman';

select * from dlithe.dbo.S_HREMPLOYEES 
WHERE FIRST_NAME = 'john' AND LAST_NAME ='chen';

select * from dlithe.dbo.S_HREMPLOYEES 
WHERE DEPARTMENT_ID BETWEEN 100 AND 103;


select * from dlithe.dbo.S_HREMPLOYEES 
WHERE FIRST_NAME  LIKE '%s%' AND LAST_NAME LIKE '%k%';


select * from dlithe.dbo.S_HREMPLOYEES 
WHERE FIRST_NAME NOT LIKE '%l%' AND LAST_NAME NOT LIKE '%s%';

select * from dlithe.dbo.S_HREMPLOYEES 
WHERE DEPARTMENT_ID is null;

select * from dlithe.dbo.S_HREMPLOYEES 
WHERE EMPLOYEE_ID IN (102,105,60,120);

--------------------------------
--select * from lookup_NF




















