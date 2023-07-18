 --to fetch records from Hr_department
 SELECT * FROM HR_DEPARTMENT;

--1) Query to find the Employee count for Each Agency

SELECT AGENCY , COUNT(*) NO_OF_EMPLOYEES FROM HR_DEPARTMENT
GROUP BY AGENCY ORDER BY AGENCY;

