START TRANSACTION;

INSERT INTO
    x_gold_transfers (from_character_id, to_character_id, amount)
SELECT
    NULL,
    c.character_id,
    c.level * 1000
FROM
    x_characters AS c
    JOIN x_jobs AS j ON c.job_id = j.job_id
WHERE
    c.deleted_at IS NULL AND
    j.name IN ('Priest', 'Wizard');

SELECT
    LEFT(gt.transfer_id::text, 8) AS id,
    COALESCE(fc.name, '_SYS_') AS "from",
    COALESCE(tc.name, '_SYS_') AS "to",
    TO_CHAR(gt.amount, '999,999') AS amount,
    gt.transferred_at,
    tc.level
FROM
    x_gold_transfers gt
    LEFT JOIN x_characters fc ON gt.from_character_id = fc.character_id
    LEFT JOIN x_characters tc ON gt.to_character_id = tc.character_id
    LEFT JOIN x_jobs tj ON tc.job_id = tj.job_id
WHERE
    gt.from_character_id IS NULL AND
    tj.name IN ('Priest', 'Wizard') AND
    gt.amount = tc.level * 1000
ORDER BY
    tc.character_id;

ROLLBACK;