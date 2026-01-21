START TRANSACTION;

SELECT
    ROUND(AVG(level), 1) AS "avg_lv"
FROM
    x_characters
WHERE
    deleted_at IS NULL;

SELECT
    character_id,
    name,
    level
FROM
    x_characters
WHERE
    deleted_at IS NULL AND
    character_id IN (
        SELECT
            c.character_id
        FROM
            x_guild_characters AS gc
            JOIN x_characters AS c ON gc.character_id = c.character_id
            JOIN x_guilds AS g ON gc.guild_id = g.guild_id
        WHERE
            g.name = 'Yamato'
    );

UPDATE x_characters AS c
SET
    level = c.level + (
        SELECT
            CASE
                WHEN c.level <= AVG(c1.level) THEN 2
                ELSE 1
            END
        FROM
            x_characters AS c1
        WHERE
            c1.deleted_at IS NULL
    )
WHERE
    c.deleted_at IS NULL AND
    c.character_id IN (
        SELECT
            c2.character_id
        FROM
            x_guild_characters AS gc
            JOIN x_characters AS c2 ON gc.character_id = c2.character_id
            JOIN x_guilds AS g ON gc.guild_id = g.guild_id
        WHERE
            g.name = 'Yamato'
    )
RETURNING
    c.character_id,
    c.name,
    c.level;

ROLLBACK;