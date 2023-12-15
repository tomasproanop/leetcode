select distinct author_id as id
from views 
where author_id = viewer_id
order by id asc;

# better runtime: 

select author_id as id
from Views
where author_id = viewer_id
group by author_id
order by author_id asc
