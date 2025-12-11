DROP TABLE IF EXISTS p_characters;

START TRANSACTION;

CREATE TABLE p_characters (
    character_id integer PRIMARY KEY,
    name varchar(16) NOT NULL,
    job varchar(16) NOT NULL,
    guild varchar(16)
);

INSERT INTO
    p_characters (character_id, name, job, guild)
VALUES
    (1, 'Alice', 'Priest', 'Yamato'),
    (2, 'Bob', 'Monk', 'hameln'),
    (3, 'Charlie', 'Wizard', NULL),
    (4, 'Dave', 'Samurai', 'Yamato');

SELECT
    *
FROM
    p_characters;

ROLLBACK;