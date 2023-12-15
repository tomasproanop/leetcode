select tweet_id
from tweets
where length(content) > 15
order by null;
