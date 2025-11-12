START TRANSACTION;

DELETE FROM s_characters;

SELECT
    *
FROM
    s_characters;

ROLLBACK;