SELECT
    id,
    name,
    level
FROM
    s_characters
ORDER BY
    level DESC
LIMIT
    5
OFFSET
    10;