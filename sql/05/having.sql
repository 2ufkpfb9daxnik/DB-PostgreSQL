SELECT
    COALESCE(guild, 'Freelancer') AS "guild",
    COUNT(*) AS "num",
    ROUND(AVG(level), 1) AS "avg_lv"
FROM
    s_characters
GROUP BY
    guild
HAVING
    AVG(level) >= 50
ORDER BY
    AVG(level) DESC;