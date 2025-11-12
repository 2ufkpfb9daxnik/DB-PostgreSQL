START TRANSACTION;

INSERT INTO
    s_users (id, name, age)
VALUES
    (3, 'Carol', 18);

INSERT INTO
    s_users (id, name, age)
VALUES
    (4, 'Dave', NULL);

INSERT INTO
    s_users (id, name, age)
VALUES
    (5, 'Ellen', 17);

COMMIT;

SELECT
    *
FROM
    s_users;