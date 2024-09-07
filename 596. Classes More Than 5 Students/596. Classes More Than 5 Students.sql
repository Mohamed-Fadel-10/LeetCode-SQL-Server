select distinct class from(
select * , Row_number() over (partition by class order by student desc) as RN
from Courses 
)as newTable
where RN>=5
