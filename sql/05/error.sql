SELECT
    job,
    MAX(level),
    AVG(level)
FROM
    s_characters
GROUP BY
    job;