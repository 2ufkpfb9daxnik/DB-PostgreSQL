SELECT
    id,
    name,
    job,
    level
FROM
    s_characters
ORDER BY
    CASE
        WHEN job = 'Priest' OR
        job = 'Wizard' THEN 1
        ELSE 2
    END ASC,
    job,
    level DESC;