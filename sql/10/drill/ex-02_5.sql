SELECT
    i.*
FROM
    x_items AS i
WHERE
    COALESCE(
        (
            SELECT
                COUNT(DISTINCT c.character_id)
            FROM
                x_character_items AS c
            WHERE
                c.item_id = i.item_id
        ),
        0
    ) <= 2
ORDER BY
    i.item_id;