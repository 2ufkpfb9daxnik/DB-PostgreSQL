SELECT
    MIN(LENGTH(name)) AS "min_len_name",
    MAX(LENGTH(name)) AS "max_len_name"
FROM
    s_characters;