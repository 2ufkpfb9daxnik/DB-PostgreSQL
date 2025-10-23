SELECT
    id,
    name,
    level,
    guild
FROM
    s_characters
WHERE
    level >= 20 AND
    guild IS NOT NULL
ORDER BY
    level DESC;