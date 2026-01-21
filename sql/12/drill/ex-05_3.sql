START TRANSACTION;

UPDATE x_items AS it
SET
    price = (CEIL(it.price * 1.2 / 10.0) * 10)::int
FROM
    (
        SELECT
            ci.item_id,
            SUM(ci.qty) AS total_qty
        FROM
            x_character_items AS ci
            JOIN x_characters AS c ON ci.character_id = c.character_id
        WHERE
            c.deleted_at IS NULL
        GROUP BY
            ci.item_id
    ) AS s
WHERE
    it.item_id = s.item_id AND
    s.total_qty >= 6
RETURNING
    it.item_id,
    it.name,
    it.price AS updated_price;

ROLLBACK;