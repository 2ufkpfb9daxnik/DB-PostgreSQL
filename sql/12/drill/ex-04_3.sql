START TRANSACTION;

UPDATE x_items
SET
    price = (CEIL(price * 1.2 / 10.0) * 10)::int
WHERE
    item_id IN (
        SELECT
            ci.item_id
        FROM
            x_character_items AS ci
            JOIN x_characters AS c ON ci.character_id = c.character_id
        WHERE
            c.deleted_at IS NULL
        GROUP BY
            ci.item_id
        HAVING
            SUM(ci.qty) >= 6
    )
RETURNING
    item_id,
    name,
    price AS updated_price;

ROLLBACK;