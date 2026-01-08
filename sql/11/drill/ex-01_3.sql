SELECT
    c.character_id,
    c.name,
    COALESCE(
        (
            SELECT
                j.name
            FROM
                n_jobs AS j
            WHERE
                c.job_id = j.job_id
        ),
        '---'
    ) AS job
FROM
    n_characters AS c;