START TRANSACTION;

INSERT INTO
    x_gold_transfers (from_character_id, to_character_id, amount, transferred_at)
SELECT
    c.character_id,
    g.owner_id,
    2000,
    TIMESTAMP '2025-12-15 04:00:00'
FROM
    x_guild_characters AS gc
    JOIN x_characters AS c ON gc.character_id = c.character_id AND
    c.deleted_at IS NULL
    JOIN x_guilds AS g ON gc.guild_id = g.guild_id
    JOIN x_characters AS owner ON g.owner_id = owner.character_id AND
    owner.deleted_at IS NULL
WHERE
    g.owner_id <> c.character_id;

SELECT
    LEFT(gt.transfer_id::text, 8) AS id,
    COALESCE(fc.name, '_SYS_') AS "from",
    COALESCE(tc.name, '_SYS_') AS "to",
    TO_CHAR(gt.amount, '999,999') AS amount,
    gt.transferred_at
FROM
    x_gold_transfers AS gt
    LEFT JOIN x_characters AS fc ON gt.from_character_id = fc.character_id
    LEFT JOIN x_characters AS tc ON gt.to_character_id = tc.character_id
WHERE
    gt.transferred_at = TIMESTAMP '2025-12-15 04:00:00'
ORDER BY
    gt.to_character_id,
    gt.from_character_id;

ROLLBACK;