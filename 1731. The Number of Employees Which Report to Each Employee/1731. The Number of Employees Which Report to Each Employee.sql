/* Write your T-SQL query statement below */

select a.employee_id ,a.name  ,Count(b.reports_to ) as reports_count ,
Round(AVG(Cast(b.age as decimal(18,2))),0) as average_age 
from Employees a inner join Employees b
on a.employee_id=b.reports_to
group by a.employee_id ,a.name , b.reports_to
order by a.employee_id asc