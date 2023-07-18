 --to fetch records from Hr_department
 SELECT * FROM HR_DEPARTMENT;

--1) Query to find the Employee count for Each Agency

SELECT AGENCY , COUNT(*) NO_OF_EMPLOYEES FROM HR_DEPARTMENT
GROUP BY AGENCY ORDER BY AGENCY;

--2) Query to find list of employees who are all contractual worker.
CREATE INDEX HR_POSITION ON HR_DEPARTMENT("Position Title");

SELECT "Employee Name" AS "CONTRACTUAL WORKER" FROM HR_DEPARTMENT
WHERE "Position Title" = 'CONTRACTUAL WORKER' ORDER BY 1;