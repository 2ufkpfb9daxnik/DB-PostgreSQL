START TRANSACTION;

INSERT INTO
    s_users (name, id)
VALUES
    ('Carol', 3),
    ('Dave', 4),
    ('Ellen', 5);

SELECT
    *
FROM
    s_users;

ROLLBACK;