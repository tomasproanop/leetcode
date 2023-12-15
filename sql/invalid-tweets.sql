select tweet_id
from tweets
where length(content) > 15
order by null;

# alternative solution:

select tweet_id
from tweets
where char_length(content) > 15
order by null;
