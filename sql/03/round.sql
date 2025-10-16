SELECT
    id AS "ID",
    name AS "Name",
    ROUND((buff + 1) * 100, 0) || '%' AS "BuffApplied(%)"
FROM
    s_characters;