SELECT
    guild,
    ROUND(AVG(level), 1) AS "avg_lv",
    COUNT(*) AS "num"
FROM
    s_characters
GROUP BY
    rollup (guild)
ORDER BY
    guild;