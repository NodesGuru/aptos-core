-- This file should undo anything in `up.sql`
ALTER TABLE events
ADD CONSTRAINT fk_transaction_versions FOREIGN KEY (transaction_version) REFERENCES transactions (version);
ALTER TABLE move_modules
ADD CONSTRAINT fk_transaction_versions FOREIGN KEY (transaction_version) REFERENCES transactions (version);
ALTER TABLE move_resources
ADD CONSTRAINT fk_transaction_versions FOREIGN KEY (transaction_version) REFERENCES transactions (version);
ALTER TABLE table_items
ADD CONSTRAINT fk_transaction_versions FOREIGN KEY (transaction_version) REFERENCES transactions (version);