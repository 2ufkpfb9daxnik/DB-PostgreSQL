SELECT
    id,
    name,
    last_login_at
FROM
    s_characters
WHERE
    DATE_PART('hour', last_login_at) BETWEEN 9 AND 17
ORDER BY
    CAST(last_login_at AS time);