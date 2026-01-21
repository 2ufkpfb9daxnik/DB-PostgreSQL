TRUNCATE TABLE x_gold_transfers RESTART IDENTITY;

START TRANSACTION;

INSERT INTO
    x_gold_transfers (from_character_id, to_character_id, amount, transferred_at)
SELECT
    NULL,
    c.character_id,
    ((RANDOM() * 21)::int * 1000) + 25000,
    TIMESTAMP '2026-01-01 04:00:00'
FROM
    x_characters c
WHERE
    c.deleted_at IS NULL;

SELECT
    LEFT(gt.transfer_id::text, 8) AS id,
    COALESCE(f.name, '_SYS_') AS "from",
    COALESCE(t.name, '_SYS_') AS "to",
    TO_CHAR(gt.amount, '999,999') AS amount,
    gt.transferred_at
FROM
    x_gold_transfers gt
    LEFT JOIN x_characters f ON gt.from_character_id = f.character_id
    LEFT JOIN x_characters t ON gt.to_character_id = t.character_id
WHERE
    gt.transferred_at = TIMESTAMP '2026-01-01 04:00:00'
ORDER BY
    id;

ROLLBACK;
