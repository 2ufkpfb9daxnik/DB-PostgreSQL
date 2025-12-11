SELECT
    ROUND(AVG(level), 1) AS "avg_level",
    SUM(level) AS "sum_level"
FROM
    s_characters;