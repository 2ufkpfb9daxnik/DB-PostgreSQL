SELECT
    id,
    name,
    guild,
    level
FROM
    s_characters
WHERE
    level >= CASE
        WHEN guild IS NOT NULL THEN 60
        ELSE 30
    END
ORDER BY
    level DESC;