
desc hr_department ;

select agency,count(*) NO_OF_EMPLOYEES from HR_DEPARTMENT
group by agency order by 2;



