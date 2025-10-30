START TRANSACTION;

DELETE FROM s_characters
WHERE
    last_login_at IS NULL OR
    last_login_at <= '2025-07-31';

SELECT
    id,
    name,
    last_login_at
FROM
    s_characters
ORDER BY
    last_login_at;

ROLLBACK;