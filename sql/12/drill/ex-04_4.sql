START TRANSACTION;

UPDATE x_items
SET
    price = CASE
        WHEN (
            SELECT
                COUNT(DISTINCT ci.character_id)
            FROM
                x_character_items ci
                JOIN x_characters c ON ci.character_id = c.character_id
            WHERE
                c.deleted_at IS NULL AND
                ci.item_id = x_items.item_id
        ) > 0 THEN price + (
            SELECT
                COUNT(DISTINCT ci.character_id)
            FROM
                x_character_items ci
                JOIN x_characters c ON ci.character_id = c.character_id
            WHERE
                c.deleted_at IS NULL AND
                ci.item_id = x_items.item_id
        ) * 50
        ELSE price - 100
    END
RETURNING
    item_id,
    name,
    price AS updated_price;

ROLLBACK;