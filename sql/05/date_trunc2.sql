SELECT
    TO_CHAR(DATE_TRUNC('month', last_login_at), 'YYYY/MM') AS "date",
    COUNT(*) AS "num"
FROM
    s_characters
WHERE
    last_login_at IS NOT NULL
GROUP BY
    DATE_TRUNC('month', last_login_at)
ORDER BY
    "date";