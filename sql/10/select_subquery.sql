SELECT
    character_id,
    name,
    job_id,
    (
        SELECT
            name
        FROM
            x_jobs
        WHERE
            job_id = x_characters.job_id
    ) AS job_name
FROM
    x_characters
WHERE
    job_id IN (
        SELECT
            job_id
        FROM
            x_jobs
        WHERE
            name IN ('Wizard', 'Priest')
    )
ORDER BY
    job_id,
    character_id;