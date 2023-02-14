-- Your SQL goes here
ALTER TABLE events
DROP CONSTRAINT fk_transaction_versions;
ALTER TABLE move_modules
DROP CONSTRAINT fk_transaction_versions;
ALTER TABLE move_resources
DROP CONSTRAINT fk_transaction_versions;
ALTER TABLE table_items
DROP CONSTRAINT fk_transaction_versions;