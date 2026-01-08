SELECT
    gc.guild_id,
    (
        SELECT
            name
        FROM
            x_guilds g
        WHERE
            g.guild_id = gc.guild_id
    ) AS guild_name,
    gc.character_id,
    (
        SELECT
            name
        FROM
            x_characters c
        WHERE
            c.character_id = gc.character_id
    ) AS character_name,
    gc.level
FROM
    x_guild_characters gc
ORDER BY
    gc.guild_id;
