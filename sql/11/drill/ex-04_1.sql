SELECT
    i.item_id,
    i.name AS item_name,
    m.qty AS "Marvin",
    j.qty AS "Jack",
    a.qty AS "Alice",
    i.description
FROM
    x_items AS i
    LEFT JOIN (
        SELECT
            ci.item_id,
            ci.qty
        FROM
            x_character_items ci
            JOIN x_characters c ON ci.character_id = c.character_id
        WHERE
            c.name = 'Marvin'
    ) AS m ON i.item_id = m.item_id
    LEFT JOIN (
        SELECT
            ci.item_id,
            ci.qty
        FROM
            x_character_items ci
            JOIN x_characters c ON ci.character_id = c.character_id
        WHERE
            c.name = 'Jack'
    ) AS j ON i.item_id = j.item_id
    LEFT JOIN (
        SELECT
            ci.item_id,
            ci.qty
        FROM
            x_character_items ci
            JOIN x_characters c ON ci.character_id = c.character_id
        WHERE
            c.name = 'Alice'
    ) AS a ON i.item_id = a.item_id
WHERE
    m.item_id IS NOT NULL OR
    j.item_id IS NOT NULL OR
    a.item_id IS NOT NULL
ORDER BY
    i.item_id;