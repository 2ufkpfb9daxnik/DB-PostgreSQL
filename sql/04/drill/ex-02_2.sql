SELECT
    id,
    name,
    last_login_at,
    TO_CHAR(CAST('2025-10-15' AS DATE) - CAST(last_login_at AS DATE), 'FM9999') || ' days ago' AS "Days Since Last Login"
FROM
    s_characters
ORDER BY
    last_login_at DESC NULLS LAST;