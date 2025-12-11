DROP TABLE IF EXISTS p_characters;

START TRANSACTION;

CREATE TABLE p_characters (
    character_id integer PRIMARY KEY,
    name varchar(16) NOT NULL,
    job varchar(16) NOT NULL,
    level integer NOT NULL DEFAULT 1,
    guild varchar(16) DEFAULT NULL,
    created_on date DEFAULT current_date,
    updated_at timestamp DEFAULT LOCALTIMESTAMP(0)
);

INSERT INTO
    p_characters (character_id, name, job)
VALUES
    (1, 'Alice', 'Priest');

INSERT INTO
    p_characters (character_id, name, job, guild)
VALUES
    (2, 'Bob', 'Priest', 'hameln');

INSERT INTO
    p_characters (character_id, name, job, level, created_on)
VALUES
    (3, 'Charlie', 'Wizard', 5, '2025-10-30'),
    (4, 'Dave', 'Samurai', 20, '2025-08-10');

SELECT
    character_id,
    name,
    job,
    level,
    guild,
    created_on,
    updated_at AS updated_at
FROM
    p_characters;

ROLLBACK;