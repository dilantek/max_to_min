CREATE OR REPLACE FUNCTION _final_max_to_min(numeric[])
   RETURNS text AS
$$
select max(val)::text|| ' -> '||min(val)::text
from (
 SELECT val
 FROM unnest($1) val
 ) t1
$$
LANGUAGE 'sql' IMMUTABLE;


CREATE AGGREGATE max_to_min(numeric) (
  SFUNC=array_append,
  STYPE=numeric[],
  FINALFUNC=_final_max_to_min,
  INITCOND='{}'
);
