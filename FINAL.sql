 --to fetch records from Hr_department
 SELECT * FROM HR_DEPARTMENT;

--1) Query to find the Employee count for Each Agency

SELECT AGENCY , COUNT(*) NO_OF_EMPLOYEES FROM HR_DEPARTMENT
GROUP BY AGENCY ORDER BY AGENCY;

--2) Query to find list of employees who are all contractual worker.
CREATE INDEX HR_POSITION ON HR_DEPARTMENT("Position Title");

SELECT "Employee Name" AS "CONTRACTUAL WORKER" FROM HR_DEPARTMENT
WHERE "Position Title" = 'CONTRACTUAL WORKER' ORDER BY 1;

--3) Query to find list of employee name work under agency "ABE LINCOLN PRES LIBRARY MUS2".
CREATE INDEX HR_AGENCY1 ON HR_DEPARTMENT(AGENCY);

SELECT "Employee Name" FROM HR_DEPARTMENT 
WHERE AGENCY ='ABE LINCOLN PRES LIBRARY MUS2';

--4) Query to find employee's count in each position.
SELECT "Position Title" , count(*) NO_OF_EMPLOYEES
FROM HR_DEPARTMENT
GROUP BY "Position Title"
ORDER BY 2;

--5) Query to count the no of employees whose period pay rate is less than 50000.
SELECT COUNT(*) NO_OF_EMPLOYEES FROM HR_DEPARTMENT
WHERE "Period Pay Rate"<50000;