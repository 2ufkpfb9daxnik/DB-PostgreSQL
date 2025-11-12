START TRANSACTION;

SELECT
    CAST('2025-10-15' AS date) - CAST(last_login_at AS date)
FROM
    s_characters
ORDER BY
    CAST('2025-10-15' AS date) - CAST(last_login_at AS date) DESC;

DELETE FROM s_characters
WHERE
    CAST('2025-10-15' AS date) - CAST(last_login_at AS date) >= 60;

SELECT
    CAST('2025-10-15' AS date) - CAST(last_login_at AS date)
FROM
    s_characters
ORDER BY
    CAST('2025-10-15' AS date) - CAST(last_login_at AS date) DESC;

ROLLBACK;