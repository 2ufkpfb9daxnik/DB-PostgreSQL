SELECT
    j.job_id,
    j.name AS job,
    c.character_id,
    c.name,
    c.level
FROM
    x_jobs AS j
    JOIN x_characters AS c ON j.job_id = c.job_id
WHERE
    c.level = (
        SELECT
            MAX(c2.level)
        FROM
            x_characters AS c2
        WHERE
            c2.job_id = j.job_id
    )
ORDER BY
    job_id;