SELECT
    id,
    name,
    last_login_at,
    TO_CHAR(LOCALTIMESTAMP - last_login_at, 'DD"日前"') AS "最終ログイン"
FROM
    s_characters;