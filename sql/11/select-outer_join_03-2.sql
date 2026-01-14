SELECT
    c.character_id,
    c.name,
    i.name,
    ci.qty
FROM
    n_characters AS c
    LEFT JOIN n_character_items AS ci ON c.character_id = ci.character_id
    JOIN n_items AS i ON ci.item_id = i.item_id -- LEFT JOIN を JOIN に変更
ORDER BY
    c.character_id;