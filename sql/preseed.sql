/*
 * Tests to ensure that objects/data that exists pre-clone is successfully
 * cloned. The results are checked, after the clone, in preseed_check.sql.
 */

-- Unfortunately the cloned DB currently isn't the same between bdr and udr
CREATE SEQUENCE some_local_seq;
CREATE TABLE some_local_tbl(id serial primary key, key text unique not null, data text);
INSERT INTO some_local_tbl(key, data) VALUES('key1', 'data1');
INSERT INTO some_local_tbl(key, data) VALUES('key2', NULL);
INSERT INTO some_local_tbl(key, data) VALUES('key3', 'data3');
CREATE TABLE some_local_tbl1(id serial, key text unique not null, data text);
INSERT INTO some_local_tbl1(key, data) VALUES('key1', 'data1');
INSERT INTO some_local_tbl1(key, data) VALUES('key2', NULL);
INSERT INTO some_local_tbl1(key, data) VALUES('key3', 'data3');
CREATE TABLE some_local_tbl2(id serial, key text, data text);
INSERT INTO some_local_tbl2(key, data) VALUES('key1', 'data1');
INSERT INTO some_local_tbl2(key, data) VALUES('key2', NULL);
INSERT INTO some_local_tbl2(key, data) VALUES('key3', 'data3');
CREATE TABLE some_local_tbl3(id integer, key text, data text);
INSERT INTO some_local_tbl3(key, data) VALUES('key1', 'data1');
INSERT INTO some_local_tbl3(key, data) VALUES('key2', NULL);
INSERT INTO some_local_tbl3(key, data) VALUES('key3', 'data3');
