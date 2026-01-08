SELECT
    j.job_id,
    j.name,
    (
        SELECT
            COUNT(c.character_id)
        FROM
            n_characters AS c
        WHERE
            c.job_id = j.job_id
    ) AS count
FROM
    n_jobs AS j;