SELECT
    id,
    name,
    guild,
    level
FROM
    s_characters
WHERE
    CASE
        WHEN guild IS NOT NULL AND
        level >= 60 THEN TRUE
        WHEN guild IS NOT NULL AND
        level >= 30 THEN TRUE
        ELSE FALSE
    END
ORDER BY
    level DESC;