create extension max_to_min;
select max_to_min(gs::smallint),
max_to_min(gs::integer),
max_to_min(gs::bigint),
max_to_min(gs::numeric)
from (
select gs
from (
select generate_series(1,10) as gs 
) t1 ) t1 ;
