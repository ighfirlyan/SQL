# Langkah Pertama adalah memilih database yang akan kita gunakan
use imdb_movie;

select * from movies
;

# most_maker_director():
select director_name from movies
where director_name is not null
group by director_name
order by count(*) desc
limit 5
;

# most_profitable_director
select director_name, sum(gross)
from movies
where gross is not null
group by gross
order by count(*) desc
limit 10
;