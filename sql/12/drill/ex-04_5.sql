START TRANSACTION;

UPDATE x_characters
SET
    level = level + (
        SELECT
            COUNT(*)
        FROM
            x_characters c2
        WHERE
            c2.job_id = x_characters.job_id AND
            c2.deleted_at IS NULL
    )
WHERE
    deleted_at IS NULL
RETURNING
    character_id,
    name,
    job_id,
    level AS updated_level;

ROLLBACK;