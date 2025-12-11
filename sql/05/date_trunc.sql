SELECT
    DATE_TRUNC('month', last_login_at) AS "date",
    COUNT(*) AS "num"
FROM
    s_characters
WHERE
    last_login_at IS NOT NULL
GROUP BY
    DATE_TRUNC('month', last_login_at);