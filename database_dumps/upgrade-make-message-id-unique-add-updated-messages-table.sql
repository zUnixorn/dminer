ALTER TABLE messages
    ADD CONSTRAINT message_id_unique UNIQUE (message_id);
CREATE TABLE updated_messages
(
    message_id       BIGINT NOT NULL,
    new_content      TEXT,
    modify_timestamp BIGINT NOT NULL,
    FOREIGN KEY (message_id) REFERENCES messages (message_id)
);