select top(1) 
case 
  when count(num)=1 then Max(num)
  else null  
 end  as num
from MyNumbers 
group by num
order by num desc