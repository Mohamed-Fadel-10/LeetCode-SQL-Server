select user_id , concat(
    Upper(SUBSTRING(name, 1, 1)),
    Lower(SUBSTRING(name,2,len(name)))) as name
from Users 
order by user_id