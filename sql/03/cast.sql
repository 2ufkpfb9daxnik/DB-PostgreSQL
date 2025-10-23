SELECT
    id,
    name,
    last_login_at,
    CAST(last_login_at AS DATE) AS "last_login_at(DATE型)"
FROM
    s_characters;