SELECT
    c.character_id,
    c.name,
    (
        SELECT
            j.name
        FROM
            n_jobs AS j
        WHERE
            j.job_id = c.job_id
    ) AS job_name
FROM
    n_characters AS c;