SELECT
    character_id,
    name,
    deleted_at
FROM
    x_characters AS c
WHERE
    NOT EXISTS (
        SELECT
            *
        FROM
            x_guild_characters AS g
        WHERE
            g.character_id = c.character_id
    )
ORDER BY
    character_id;
