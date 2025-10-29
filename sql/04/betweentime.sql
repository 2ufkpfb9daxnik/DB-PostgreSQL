SELECT
    id,
    name,
    last_login_at
FROM
    s_characters
WHERE
    last_login_at BETWEEN '2025-07-01' AND '2025-07-31'
ORDER BY
    last_login_at;