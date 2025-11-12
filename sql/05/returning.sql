START TRANSACTION;

UPDATE s_characters
SET
    buff = 0.3
WHERE
    level < 40
RETURNING
    id,
    name,
    level,
    buff;

ROLLBACK;