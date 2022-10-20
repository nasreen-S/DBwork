SELECT * FROM S_HRDEPARTMENTS sh 

select top 3 * from S_HRDEPARTMENTS sh 

select LOWER(department_name) from S_HRDEPARTMENTS sh ;

select UPPER(department_name) from S_HRDEPARTMENTS sh ; 

select LEN (department_name) from S_HRDEPARTMENTS sh ;

select LTRIM (  department_name) from S_HRDEPARTMENTS sh ; 

select RTRIM (  department_name) from S_HRDEPARTMENTS sh ; 

select CONCAT(DEPARTMENT_NAME,' ',MANAGER_ID) from S_HRDEPARTMENTS sh ;

select REPLACE('marketing','ing','@')  from S_HRDEPARTMENTS sh ;

select SUBSTRING('shipping',1,4) as first_name from S_HRDEPARTMENTS sh ;

select charindex('n','shipping') as chari from S_HRDEPARTMENTS sh ;

select CASE when department_id=10 then 'IT'
WHEN department_id=20 then 'hr'
WHEN department_id=30 then 'Trainee engineer'
ELSE 'others'
END as Dname, department_id from S_HRDEPARTMENTS sh 
 
------------------------------------

select CASE when department_id=10 then 'IT'
WHEN department_id=20 then 'hr'
WHEN department_id=30 and ((MANAGER_ID  >100 )and DEPARTMENT_NAME  <>'david')then 'Trainee engineer'
ELSE 'others'
END as Dname, department_id from S_HRDEPARTMENTS sh 























