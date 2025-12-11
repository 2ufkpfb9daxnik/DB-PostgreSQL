START TRANSACTION;

INSERT INTO
    s_users (id, name, age)
VALUES
    (3, 'Carol', 18),
    (4, 'Dave', NULL),
    (5, 'Ellen', 17);

SELECT
    *
FROM
    s_users;

SELECT
    SUM(age) AS "sum",
    SUM(COALESCE(age, 16)) AS "sum_with_default",
    ROUND(AVG(age), 1) AS "avg",
    ROUND(AVG(COALESCE(age, 16)), 1) AS "avg_with_default"
FROM
    s_users;

ROLLBACK;