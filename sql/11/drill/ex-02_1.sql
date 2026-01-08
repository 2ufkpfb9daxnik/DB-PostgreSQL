SELECT
    c.character_id,
    c.name,
    COALESCE(j.name, '---')
FROM
    n_jobs AS j
    RIGHT JOIN n_characters AS c ON j.job_id = c.job_id