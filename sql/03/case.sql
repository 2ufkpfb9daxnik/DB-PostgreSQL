SELECT
    id,
    name,
    level,
    CASE
        WHEN level >= 80 THEN 'SS'
        WHEN level >= 60 THEN 'S'
        WHEN level >= 40 THEN 'A'
        ELSE 'B'
    END AS "class"
FROM
    s_characters;