/*HR Department table*/

/*Describing the HR_DEPARTMENT table*/
DESC HR_DEPARTMENT;

/*Fetching all the records from the HR_DEPARTMENT table*/
Select "S_ID","ID","AGENCY","Agency Division","Employee Name","Position Title","Period Pay Rate","YTD Gross"
from HR_DEPARTMENT;

/*1.Write a SQL Query to find the employee count for each agency*/
Select agency, count(*) AS NO_OF_EMPLOYEES
from HR_DEPARTMENT
group by agency;

/* 2.Write a SQL Query to list the employees who are all CONTRACTUAL WORKER*/
Select "Employee Name", "Position Title" 
from HR_DEPARTMENT
where "Position Title" in ('CONTRACTUAL WORKER');

/* 3.Write a SQL Query to list the Employee name work under Agency ABE LINCOLN PRES LIBRARY MUS2*/
Select "Employee Name" 
from HR_DEPARTMENT
where Agency in ('ABE LINCOLN PRES LIBRARY MUS2');

/* 4.Write a SQL Query to find the employees count in each position*/
Select "Position Title", count("Employee Name") AS no_of_emp_in_eachposition
from HR_DEPARTMENT
group by "Position Title"
order by asc;

/* 5.Write a SQL Query to count the number of employees whose period pay rate is less than 50000*/
Select count ("Employee Name") as ASemp_with_less_periodrate
from HR_DEPARTMENT
where "Period Pay Rate" < 50000;




























