START TRANSACTION;

UPDATE s_characters
SET
    guild = NULL,
    job = 'Exile'
WHERE
    id IN (1, 2);

ROLLBACK;