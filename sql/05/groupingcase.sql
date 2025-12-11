SELECT
    CASE
        WHEN GROUPING(guild) = 1 THEN '(Total)'
        WHEN guild IS NULL THEN '(Freelancer)'
        ELSE guild
    END AS "guild",
    ROUND(AVG(level), 1) AS "avg_lv",
    COUNT(*) AS "num"
FROM
    s_characters
GROUP BY
    rollup (guild)
ORDER BY
    CASE
        WHEN GROUPING(guild) = 1 THEN 3
        WHEN guild IS NULL THEN 2
        ELSE 1
    END,
    LOWER(guild);