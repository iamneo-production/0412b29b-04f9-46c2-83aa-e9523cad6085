-- HR_DEPARTMENT TABLE

DESC HR_DEPARTMENT;

SET TIMING ON;

-- QUERY 1: Write a SQL Query to find the employee count for each agency?

SELECT AGENCY, COUNT(*) AS NO_OF_EMPLOYEES FROM HR_DEPARTMENT
GROUP BY AGENCY ORDER BY NO_OF_EMPLOYEES ASC; 
-- Elapsed: 00:00:00:03


-- QUERY 2: Write a SQL Query to list the employees who are all CONTRACTUAL WORKER?

CREATE INDEX hr_position_title ON HR_DEPARTMENT ("Position Title");

SELECT "Employee Name","Position Title" FROM HR_DEPARTMENT
WHERE "Position Title" = 'CONTRACTUAL WORKER';
-- Elapsed: 00:00:00:05


-- QUERY 3: Write a SQL QUERY to list the Employee name work under Agency ABE LINCOLN PRES LIBRARY MUS2?

SELECT "Employee Name" FROM HR_DEPARTMENT
WHERE AGENCY = 'ABE LINCOLN PRES LIBRARY MUS2';
-- Elapsed: 00:00:00:03


-- QUERY 4: Write a SQL Query to find the employees count in each position?

SELECT "Position Title", COUNT(*) AS NO_OF_EMPLOYEES FROM HR_DEPARTMENT
GROUP BY "Position Title" ORDER BY NO_OF_EMPLOYEES ASC;
-- Elapsed: 00:00:00:06


-- QUERY 5: Write a SQL Query to count the number of employees whose period pay rate is less than 50000.

SELECT count(*) AS NO_OF_EMPLOYEES FROM HR_DEPARTMENT
WHERE "Period Pay Rate" < 50000;
-- Elapsed: 00:00:00:03