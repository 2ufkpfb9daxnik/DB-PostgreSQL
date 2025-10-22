SELECT
    id,
    name,
    job,
    buff,
    CASE
        WHEN buff = 0.0 THEN '--'
        WHEN buff < 0.0 THEN 'debuff'
        WHEN buff > 0.0 THEN 'buff'
    END AS "status"
FROM
    s_characters;
