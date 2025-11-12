START TRANSACTION;

SELECT
    buff,
    CAST('2025-10-15' AS date) - CAST(last_login_at AS date) AS "since last login"
FROM
    s_characters;

UPDATE s_characters
SET
    buff = CASE
        WHEN (CAST('2025-10-15' AS date) - CAST(last_login_at AS date)) >= 60 THEN 0.40
        WHEN (CAST('2025-10-15' AS date) - CAST(last_login_at AS date)) >= 40 THEN 0.30
        WHEN (CAST('2025-10-15' AS date) - CAST(last_login_at AS date)) >= 20 THEN 0.20
        WHEN (CAST('2025-10-15' AS date) - CAST(last_login_at AS date)) >= 10 THEN 0.10
        ELSE 0.0
    END
WHERE
    last_login_at IS NOT NULL;

SELECT
    buff,
    CAST('2025-10-15' AS date) - CAST(last_login_at AS date) AS "since last login"
FROM
    s_characters;

ROLLBACK;