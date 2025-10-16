SELECT
    id AS "ID",
    name AS "Name",
    buff AS "Buff",
    (buff + 1) * 100 || '%' AS "BuffApplied(%)"
FROM
    s_characters;