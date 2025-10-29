START TRANSACTION;

INSERT INTO
    s_users (id, name, age)
VALUES
    (3, 'Carol', 18);

SELECT
    *
FROM
    s_users;

ROLLBACK;