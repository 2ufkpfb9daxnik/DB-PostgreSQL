SELECT
    j.job_id,
    j.name AS "job",
    c.name,
    CASE
        WHEN c.deleted_at IS NULL THEN ''
        ELSE 'YES'
    END AS "is_deleted"
FROM
    y_jobs AS j
    LEFT JOIN y_characters AS c ON (
        j.job_id = c.job_id AND
        c.deleted_at IS NULL
    )
ORDER BY
    j.job_id;

SELECT
    j.job_id,
    MAX(j.name) AS "job",
    COUNT(c.character_id)
FROM
    y_jobs AS j
    LEFT JOIN y_characters AS c ON (
        j.job_id = c.job_id AND
        c.deleted_at IS NULL
    )
GROUP BY
    j.job_id
ORDER BY
    j.job_id;