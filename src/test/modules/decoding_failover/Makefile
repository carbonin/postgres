# src/test/modules/worker_spi/Makefile

MODULES = decoding_failover
PGFILEDESC = "decoding_failover - test utility for logical decoding"

EXTENSION = decoding_failover
DATA = decoding_failover--1.0.sql

EXTRA_INSTALL=contrib/test_decoding
REGRESS=load_extension
REGRESS_OPTS = --temp-config=$(top_srcdir)/src/test/modules/decoding_failover/decoding_failover.conf

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = src/test/modules/decoding_failover
top_builddir = ../../../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
