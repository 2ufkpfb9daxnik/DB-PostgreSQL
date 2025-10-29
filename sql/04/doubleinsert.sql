START TRANSACTION;

INSERT INTO
    s_users (id, name, age)
VALUES
    (3, 'Carol', 18),
    (4, 'Dave', NULL),
    (1, 'Ellen', 17);

SELECT
    *
FROM
    s_users;

ROLLBACK;