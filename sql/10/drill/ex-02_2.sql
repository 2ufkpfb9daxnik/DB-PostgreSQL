SELECT
    item_id,
    name,
    description
FROM
    x_items
WHERE
    COALESCE(
        (
            SELECT
                SUM(qty)
            FROM
                x_character_items
            WHERE
                x_character_items.item_id = x_items.item_id
        ),
        0
    ) <= 5
ORDER BY
    item_id;