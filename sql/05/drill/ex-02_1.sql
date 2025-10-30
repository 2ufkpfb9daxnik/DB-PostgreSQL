START TRANSACTION;

SELECT
    buff
FROM
    s_characters;

UPDATE s_characters
SET
    buff = 0.0;

SELECT
    buff
FROM
    s_characters;

ROLLBACK;