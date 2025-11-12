START TRANSACTION;

SELECT
    job
FROM
    s_characters;

UPDATE s_characters
SET
    job = CASE
        WHEN job = 'Fighter' THEN 'Monk'
        WHEN job = 'Monk' THEN 'Samurai'
        WHEN job = 'Samurai' THEN 'Ninja'
        WHEN job = 'Ninja' THEN 'Fighter'
    END
WHERE
    job IN ('Fighter', 'Monk', 'Samurai', 'Ninja');

SELECT
    job
FROM
    s_characters;

ROLLBACK;