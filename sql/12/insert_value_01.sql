TRUNCATE TABLE x_gold_transfers restart identity;

START TRANSACTION;

INSERT INTO
    x_gold_transfers (from_character_id, to_character_id, amount, transferred_at)
VALUES
    (6, 8, 1600, '2025-12-28 10:22'),
    (18, 12, 28000, '2025-12-30 01:43'),
    (NULL, 14, 10000, '2026-01-01 00:01');

SELECT
    LEFT(transfer_id::text, 8) AS "id",
    COALESCE(from_character_id::TEXT, 'NULL') AS "from",
    COALESCE(to_character_id::TEXT, 'NULL') AS "to",
    TO_CHAR(amount, 'FM999,999') AS "amount",
    transferred_at
FROM
    x_gold_transfers
ROLLBACK;