select e1.name
from employee e1
join (
	select managerid 
	from employee
	group by managerid
	having count(managerid) >= 5
) e2
on e1.id = e2.managerid;
