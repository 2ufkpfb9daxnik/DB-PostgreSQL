SELECT
    MIN(level) AS "min_lv.",
    MAX(level) AS "max_lv.",
    MIN(name) AS "min_name",
    MAX(name) AS "nax_name"
FROM
    s_characters;

SELECT
    MIN(created_on) AS "min_created_on",
    MAX(created_on) AS "max_created_on"
FROM
    s_characters;