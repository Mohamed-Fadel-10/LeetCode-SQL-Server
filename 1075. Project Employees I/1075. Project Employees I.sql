-- Using SQL Server We Will Need To Cast Result Fisrt
select p.project_id  , Round(Avg(Cast(e.experience_years as decimal(18,2))),2) as average_years from Project p
join  Employee e on p.employee_id =e.employee_id 
group by p.project_id

-- Using MySQL Server We Just Use The Round Without Cast 

select p.project_id  ,Round( Avg(e.experience_years) ,2)as average_years from Project p
join  Employee e on p.employee_id =e.employee_id 
group by p.project_id

