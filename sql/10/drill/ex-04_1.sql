SELECT
    g.guild_id,
    g.name AS "guild_name",
    c.name AS "member",
    c.level AS "level"
FROM
    x_guilds AS g
    JOIN x_guild_characters AS gc ON g.guild_id = gc.guild_id
    JOIN x_characters AS c ON c.character_id = gc.character_id