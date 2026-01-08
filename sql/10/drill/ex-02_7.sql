SELECT
    c.character_id,
    c.name,
    (
        SELECT
            COUNT(DISTINCT ci.item_id)
        FROM
            x_character_items AS ci
        WHERE
            ci.character_id = c.character_id
    ) AS item_kinds
FROM
    x_characters AS c
ORDER BY
    c.character_id;