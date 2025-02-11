/* Write your T-SQL query statement below */
Select distinct e1.employee_id from Employees e1 left outer join Employees e2
on e1.employee_id=e2.manager_id 
where e1.salary < 30000 and e1.manager_id is not null and e1.manager_id not in (select employee_id from Employees)  
order by e1.employee_id asc