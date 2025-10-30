START TRANSACTION;

SELECT
    guild,
    buff,
    job
FROM
    s_characters
WHERE
    guild IS NULL AND
    (
        job = 'Fighter' OR
        job = 'Monk' OR
        job = 'Samurai' OR
        job = 'Ninja'
    );

UPDATE s_characters
SET
    buff = buff + 0.25 -- * 1.25?どっち
WHERE
    guild IS NULL AND
    (
        job = 'Fighter' OR
        job = 'Monk' OR
        job = 'Samurai' OR
        job = 'Ninja'
    );

SELECT
    guild,
    buff,
    job
FROM
    s_characters
WHERE
    guild IS NULL AND
    (
        job = 'Fighter' OR
        job = 'Monk' OR
        job = 'Samurai' OR
        job = 'Ninja'
    );

ROLLBACK;