select stu.student_id, 
       stu.student_name, 
       sub.subject_name, 
       count(ex.subject_name) as attended_exams 
from   students as stu 
       cross join subjects as sub 
       left join examinations as ex 
              on stu.student_id = ex.student_id 
             and sub.subject_name = ex.subject_name 
group by  stu.student_id, 
          sub.subject_name
order by  stu.student_id, 
          sub.subject_name;
