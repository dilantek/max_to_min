EXTENSION = max_to_min
DATA = max_to_min--0.0.1.sql
REGRESS = max_to_min_test

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
