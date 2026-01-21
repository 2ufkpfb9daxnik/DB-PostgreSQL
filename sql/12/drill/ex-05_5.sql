START TRANSACTION;

UPDATE x_characters AS c
SET
    level = c.level + (
        SELECT
            COUNT(*)
        FROM
            x_characters AS c2
        WHERE
            c2.job_id = c.job_id AND
            c2.deleted_at IS NULL
    )
FROM
    x_jobs AS j
WHERE
    c.job_id = j.job_id AND
    c.deleted_at IS NULL
RETURNING
    c.character_id,
    c.name,
    c.level AS updated_level;

ROLLBACK;