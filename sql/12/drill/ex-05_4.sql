START TRANSACTION;

UPDATE x_items AS it
SET
    price = CASE
        WHEN COALESCE(s.holder_cnt, 0) > 0 THEN it.price + s.holder_cnt * 50
        ELSE it.price - 100
    END
FROM
    (
        SELECT
            ci.item_id,
            COUNT(DISTINCT ci.character_id) AS holder_cnt
        FROM
            x_character_items ci
            JOIN x_characters c ON ci.character_id = c.character_id
        WHERE
            c.deleted_at IS NULL
        GROUP BY
            ci.item_id
    ) AS s
    RIGHT JOIN x_items it2 ON it2.item_id = s.item_id
WHERE
    it.item_id = it2.item_id
RETURNING
    it.item_id,
    it.name,
    it.price AS updated_price;

ROLLBACK;