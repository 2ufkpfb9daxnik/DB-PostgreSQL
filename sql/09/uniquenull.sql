DROP TABLE IF EXISTS p_characters;

START TRANSACTION;

CREATE TABLE p_characters (
    character_id integer PRIMARY KEY,
    name varchar(16) NOT NULL,
    email varchar(64) UNIQUE
);

INSERT INTO
    p_characters (character_id, name, email)
VALUES
    (1, 'Alice', NULL),
    (2, 'Bob', NULL);

SELECT
    *
FROM
    p_characters;

ROLLBACK