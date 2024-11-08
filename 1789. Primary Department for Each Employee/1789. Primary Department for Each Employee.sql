With DepartmentRank as (
    select 
        employee_id,
        department_id,
        primary_flag,
        ROW_NUMBER() over (
            partition by employee_id 
            order by 
            case when primary_flag = 'Y' then 1 else 2 end
        ) as rn
    from 
        Employee
)
select employee_id , department_id
from  DepartmentRank
where rn = 1;
