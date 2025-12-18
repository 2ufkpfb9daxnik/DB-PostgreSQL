SELECT
    character_id,
    name,
    job_id
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
    character_id;