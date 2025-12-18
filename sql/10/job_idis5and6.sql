SELECT
    character_id,
    name,
    job_id,
FROM
    x_characters,
WHERE
    job_id IN (5, 6)
GROUP BY
    character_id;