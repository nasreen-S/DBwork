SELECT * from DBO.S_HREMPLOYEES sh 


SELECT * FROM (
SELECT RANK () OVER (PARTITION BY DEPARTMENT_ID ORDER BY HIRE_DATE  ASC) AS DRNK,SALARY,
DEPARTMENT_ID,HIRE_DATE
FROM DBO.S_HREMPLOYEES sh 
WHERE DEPARTMENT_ID=50
)x
WHERE DRNK=1;

-------------------------------------------------------------
SELECT * FROM DBO.S_HREMPLOYEES sh 

SELECT * FROM DBO.S_HRDEPARTMENTS sh2

SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME,
	SH2.MANAGER_ID 
FROM
	DBO.S_HREMPLOYEES sh ,
	DBO.S_HRDEPARTMENTS sh2
WHERE
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;
---------inner join---------------	
SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME
FROM
	DBO.S_HREMPLOYEES sh 
	INNER JOIN DBO.S_HRDEPARTMENTS sh2
ON
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;
-------left join--------
SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME
FROM
	DBO.S_HREMPLOYEES sh
left JOIN DBO.S_HRDEPARTMENTS sh2 
ON
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;
------------right join------------
SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME
FROM
	DBO.S_HREMPLOYEES sh
right JOIN DBO.S_HRDEPARTMENTS sh2 
ON
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;
-----------full join--------------------
SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME
FROM
	DBO.S_HREMPLOYEES sh
full JOIN DBO.S_HRDEPARTMENTS sh2 
ON
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;
-----------------------------------------------------------------------------

select * from empn1_trg

--truncate table empn1_trg
 
select * from emp_n1

update emp_n1 set salary=57000 where id=20

select * from emp_trg






















	