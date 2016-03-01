-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION decoding_failover" to load this file. \quit

CREATE OR REPLACE FUNCTION decoding_failover_create_logical_slot(slot_name text, plugin text)
RETURNS void
LANGUAGE c AS 'MODULE_PATHNAME';

COMMENT ON FUNCTION decoding_failover_create_logical_slot(text, text)
IS 'Create a logical slot at a particular lsn and xid. Do not use in production servers, it is not safe. The slot is created with an invalid xmin and lsn.';

CREATE OR REPLACE FUNCTION decoding_failover_advance_logical_slot(slot_name text, new_xmin bigint, new_catalog_xmin bigint, new_restart_lsn pg_lsn, new_confirmed_lsn pg_lsn)
RETURNS void
LANGUAGE c AS 'MODULE_PATHNAME';

COMMENT ON FUNCTION decoding_failover_advance_logical_slot(text, bigint, bigint, pg_lsn, pg_lsn)
IS 'Advance a logical slot directly. Do not use this in production servers, it is not safe.';
