
-- 1) 

select AGENCY,count(*) as NO_OF_EMPLOYEES from HR_DEPARTMENT
GROUP BY AGENCY order by id ASC;

-- 2)
SELECT "Employee Name" as "CONTRACTUAL WORKERS" FROM HR_DEPARTMENT
WHERE "Position Title" = 'CONTRACTUAL WORKER' order by s_id asc; 
    

-- 3) 

SELECT "Employee Name" FROM HR_DEPARTMENT
WHERE AGENCY = 'ABE LINCOLN PRES LIBRARY MUS2'; 

SELECT "Employee Name" FROM HR_DEPARTMENT
WHERE AGENCY = 'ABE LINCOLN PRES LIBRARY MUS2'; --Elapsed:  00:00:00:02

-- 4) 

SELECT "Position Title",COUNT(*) as no_of_employees FROM HR_DEPARTMENT 
GROUP BY "Position Title" order by s_id asc; --Elapsed:  00:00:00:06

-- 5) 

SELECT COUNT(*) as NO_OF_EMPLOYEES FROM HR_DEPARTMENT
WHERE "Period Pay Rate" <50000 ;--Elapsed:  00:00:00:03