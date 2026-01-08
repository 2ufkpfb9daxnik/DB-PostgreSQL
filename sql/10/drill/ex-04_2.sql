SELECT
    g.guild_id,
    g.name AS guild_name,
    o.name AS owner_name,
    COUNT(gc.character_id) AS member_count,
    CAST(ROUND(AVG(o.level)) AS INTEGER) AS average_level
FROM
    x_guilds AS g
    JOIN x_guild_characters AS gc ON g.guild_id = gc.guild_id
    JOIN x_characters AS o ON g.owner_id = o.character_id
GROUP BY
    g.guild_id,
    g.name,
    o.name
ORDER BY
    member_count DESC;