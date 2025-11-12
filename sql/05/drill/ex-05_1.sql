SELECT
    job,
    ROUND(AVG(level), 1) AS "avg_lv",
    COUNT(*) AS "num"
FROM
    s_characters
GROUP BY
    job
HAVING
    COUNT(job) >= 3
ORDER BY
    AVG(level) DESC;