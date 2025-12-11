SELECT
    job,
    COUNT(*) AS "num",
    MAX(level) AS "max_lv",
    ROUND(AVG(level), 1) AS "avg_lv"
FROM
    s_characters
GROUP BY
    job
ORDER BY
    job;