START TRANSACTION;

SELECT
    last_login_at,
    created_on
FROM
    s_characters;

DELETE FROM s_characters
WHERE
    (last_login_at IS NULL) AND
    (created_on <= '2023-12-31');

SELECT
    last_login_at,
    created_on
FROM
    s_characters;

ROLLBACK;