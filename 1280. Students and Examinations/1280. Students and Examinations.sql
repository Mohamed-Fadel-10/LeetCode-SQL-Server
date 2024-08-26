select s.student_id , s.student_name, su.subject_name , Count(e.student_id) as attended_exams
from Students s cross Join Subjects Su 
left outer join Examinations e 
on su.subject_name = e.subject_name and e.student_id =s.student_id 
group by s.student_id ,su.subject_name , s.student_name
order by s.student_id  , su.subject_name