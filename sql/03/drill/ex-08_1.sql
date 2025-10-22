SELECT
    id,
    name,
    TO_CHAR(created_on, 'YYYY-MM-DD') AS "created_on",
    '令和' || DATE_PART('year', created_on) - 2018 || TO_CHAR(created_on, '"年"MM"月"DD"日"') AS "created_on_2"
FROM
    s_characters;