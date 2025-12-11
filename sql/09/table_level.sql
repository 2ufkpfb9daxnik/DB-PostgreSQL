START TRANSACTION;

DROP TABLE IF EXISTS p_characters;

CREATE TABLE p_characters (
    character_id integer,
    name varchar(16),
    job varchar(16),
    guild varchar(16),
    PRIMARY KEY (character_id),
    CHECK (name IS NOT NULL),
    CHECK (job IS NOT NULL)
);

SELECT
    *
FROM
    p_characters;

ROLLBACK;