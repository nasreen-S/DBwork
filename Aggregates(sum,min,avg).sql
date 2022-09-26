select * from S_HREMPLOYEES sh 

select sum(employee_id) as empid,AVG(salary) as salaryavg,
count(*) as countcol from S_HREMPLOYEES sh 

select min(salary) as minsal,MAX(salary) as maxsal from S_HREMPLOYEES sh 

select COUNT(1),MANAGER_ID 
from S_HREMPLOYEES sh 
where MANAGER_ID is not NULL 
GROUP by MANAGER_ID 
HAVING COUNT(1)>6
ORDER BY MANAGER_ID ASC 