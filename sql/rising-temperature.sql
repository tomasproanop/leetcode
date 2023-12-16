select b.id 
from weather a
inner join weather b
on to_days(a.recorddate) = to_days(b.recorddate) -1
where b.temperature > a.temperature
