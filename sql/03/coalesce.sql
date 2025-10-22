SELECT
    id,
    name,
    guild,
    COALESCE(guild, '(無所属)') AS "所属"
FROM
    s_characters;