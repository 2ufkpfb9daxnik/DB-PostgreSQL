SELECT
    job,
    guild,
    COUNT(*),
    ROUND(AVG(level), 1)
FROM
    s_characters
WHERE
    job = 'Priest' OR
    job = 'Wizard'
GROUP BY
    job,
    guild;