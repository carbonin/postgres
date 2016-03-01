CREATE EXTENSION decoding_failover;

SELECT decoding_failover_create_logical_slot('test_slot', 'test_decoding');

SELECT decoding_failover_advance_logical_slot('test_slot', txid_current(), txid_current(), pg_current_xlog_location(), pg_current_xlog_location());

SELECT pg_drop_replication_slot('test_slot');
