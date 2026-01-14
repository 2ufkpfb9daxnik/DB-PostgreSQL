SELECT
    i.item_id,
    i.name,
    COUNT(ci.character_id) AS "holder_count"
FROM
    n_items AS i
    LEFT JOIN n_character_items AS ci ON i.item_id = ci.item_id AND
    ci.qty > 0
GROUP BY
    i.item_id,
    i.name
ORDER BY
    i.item_id