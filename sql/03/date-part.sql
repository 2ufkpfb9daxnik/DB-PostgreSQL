SELECT
    name,
    last_login_at,
    DATE_PART('year', last_login_at) AS "year",
    DATE_PART('month', last_login_at) AS "month",
    DATE_PART('day', last_login_at) AS "day",
    DATE_PART('hour', last_login_at) AS "hour",
    DATE_PART('minute', last_login_at) AS "minute",
    DATE_PART('second', last_login_at) AS "second"
FROM
    s_characters;