
-- 1) 

select AGENCY,count(*) NO_OF_EMPLOYEES from HR_DEPARTMENT
GROUP BY AGENCY order by 2; --Elapsed:  00:00:00:03

-- 2)
SELECT "Employee Name" as "CONTRACTUAL WORKERS" FROM HR_DEPARTMENT
WHERE "Position Title" = 'CONTRACTUAL WORKER' order by 1; --Elapsed:  00:00:00:06
    
-- To optimize the query ,create index on position title so it return the result faster 
create  index hr_position on HR_DEPARTMENT ("Position Title");

SELECT "Employee Name" AS "CONTRACTUAL WORKERS" FROM HR_DEPARTMENT
WHERE "Position Title" = 'CONTRACTUAL WORKER' order by 1;--Elapsed:  00:00:00:05

-- 3) 

SELECT "Employee Name" FROM HR_DEPARTMENT
WHERE AGENCY = 'ABE LINCOLN PRES LIBRARY MUS2'; --Elapsed:  00:00:00:06

-- To optimize the query ,create index on agency title so it return the result faster 
create index hr_agency on hr_department (agency);

SELECT "Employee Name" FROM HR_DEPARTMENT
WHERE AGENCY = 'ABE LINCOLN PRES LIBRARY MUS2'; --Elapsed:  00:00:00:02

-- 4) 

SELECT "Position Title",COUNT(*) no_of_employees FROM HR_DEPARTMENT 
GROUP BY "Position Title" order by 2; --Elapsed:  00:00:00:06

-- 5) Write a SQL Query to count the number of employees whose period pay rate is less than 50000

SELECT COUNT(*) NO_OF_EMPLOYEES FROM HR_DEPARTMENT
WHERE "Period Pay Rate" <50000 ;--Elapsed:  00:00:00:03