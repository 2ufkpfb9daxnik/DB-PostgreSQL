SELECT
    g.guild_id,
    g.name AS guild,
    j.name,
    COUNT(c.character_id) AS count
FROM
    x_guilds AS g
    JOIN x_guild_characters AS gc ON g.guild_id = gc.guild_id
    JOIN x_characters AS c ON gc.character_id = c.character_id AND
    c.deleted_at IS NULL
    JOIN x_jobs AS j ON c.job_id = j.job_id
GROUP BY
    g.guild_id,
    g.name,
    j.name,
    j.job_id
ORDER BY
    g.guild_id,
    j.job_id;