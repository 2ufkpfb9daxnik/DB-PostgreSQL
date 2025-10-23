SELECT
    id,
    name,
    level
FROM
    s_characters
ORDER BY
    RANDOM()
LIMIT
    5;