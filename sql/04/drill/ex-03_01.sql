SELECT
    id,
    name,
    level,
    COALESCE(guild, '(無所属)')
FROM
    s_characters
ORDER BY
    CASE
        WHEN guild = 'Yamato' THEN 1
        WHEN guild IS NULL THEN 2
    END,
    LOWER(guild),
    level DESC;