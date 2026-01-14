SELECT
    c.character_id,
    c.name
FROM
    x_characters AS c
    JOIN x_guild_characters AS gc ON gc.character_id = c.character_id
    JOIN x_guilds AS g ON gc.guild_id = g.guild_id
WHERE
    g.name = 'Yamato'