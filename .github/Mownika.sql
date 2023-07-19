
select agency,count(*) NO_OF_EMPLOYEES from HR_DEPARTMENT
group by agency;

select "Employee Name", "Position Title" from HR_DEPARTMENT
where "Position Title" in ('CONTRACTUAL WORKER');

select "Employee Name" from HR_DEPARTMENT
where Agency in ('ABE LINCOLN PRES LIBRARY MUS2');

Select "Position Title",count("Employee Name") no_of_emp_in_eachposition 
from HR_DEPARTMENT
group by "Position Title";

select count("Employee Name")
from HR_DEPARTMENT
where "Period Pay Rate" < 50000;
