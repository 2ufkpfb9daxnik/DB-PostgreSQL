DROP TABLE IF EXISTS p_characters;

START TRANSACTION;

CREATE TABLE p_characters (
    character_id INTEGER PRIMARY KEY,
    name VARCHAR(16) NOT NULL,
    hp_max INTEGER NOT NULL CHECK (hp_max >= 0),
    hp INTEGER NOT NULL CHECK (hp >= 0) CHECK (hp_max >= hp)
);

INSERT INTO
    p_characters (character_id, name, hp_max, hp)
VALUES
    (1, 'Alice', 200, 180);

SELECT
    *
FROM
    p_characters;

-- CHECK制約違反により失敗
UPDATE p_characters
SET
    hp_max = 100
WHERE
    character_id = 1;

SELECT
    *
FROM
    p_characters;

ROLLBACK;