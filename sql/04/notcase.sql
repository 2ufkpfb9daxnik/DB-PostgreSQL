SELECT
    id,
    name,
    guild,
    level
FROM
    s_characters
WHERE
    (
        guild IS NOT NULL AND
        level >= 60
    ) OR
    (
        guild IS NOT NULL AND
        level >= 30
    )
ORDER BY
    level DESC;