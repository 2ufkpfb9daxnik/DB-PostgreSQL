SELECT
    j.job_id,
    MAX(j.name) AS "name",
    COUNT(c.character_id)
    -- COUNT(*)
FROM
    n_characters AS c
    LEFT JOIN n_characters AS c ON c.job_id = j.job_id
GROUP BY
    j.job_id
ORDER BY
    j.job_id;