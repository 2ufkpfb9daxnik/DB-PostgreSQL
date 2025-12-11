START TRANSACTION;

DROP TABLE IF EXISTS p_characters;

CREATE TABLE p_characters (
    character_id integer PRIMARY KEY,
    name varchar(16) NOT NULL UNIQUE,
    job varchar(16) NOT NULL,
    guild varchar(16)
);

SELECT
    *
FROM
    p_characters;

ROLLBACK;