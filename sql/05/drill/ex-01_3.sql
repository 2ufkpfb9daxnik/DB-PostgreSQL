START TRANSACTION;

SELECT
    id
FROM
    s_characters;

DELETE FROM s_characters
WHERE
    id = 3 OR
    id = 5 OR
    id = 8 OR
    id = 9 OR
    id = 10 OR
    id = 14;

SELECT
    id
FROM
    s_characters;

ROLLBACK;