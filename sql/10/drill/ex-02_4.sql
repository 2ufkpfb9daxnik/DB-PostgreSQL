SELECT
    *
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
    ) AND
    deleted_at IS NULL;
