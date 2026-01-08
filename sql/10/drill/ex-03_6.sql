SELECT
    j.job_id,
    j.name AS "job",
    COUNT(c.character_id) AS "count"
FROM
    x_jobs AS j
    JOIN x_characters AS c ON j.job_id = c.job_id AND
    c.deleted_at IS NULL
GROUP BY
    j.job_id,
    j.name
ORDER BY
    j.job_id;
