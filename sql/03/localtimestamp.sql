SELECT
    id,
    name,
    last_login_at,
    LOCALTIMESTAMP - last_login_at AS "Elapsed Time Since Last Login"
FROM
    s_characters;