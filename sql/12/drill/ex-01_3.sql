SELECT
    i.item_id,
    i.name,
    COALESCE(SUM(ci.qty), 0) AS "total_qty",
    COUNT(DISTINCT ci.character_id) AS "holder_cnt"
FROM
    y_items AS i
    LEFT JOIN (
        y_character_items AS ci
        JOIN y_characters AS c ON ci.character_id = c.character_id AND
        c.deleted_at IS NULL
    ) ON i.item_id = ci.item_id
GROUP BY
    i.item_id
ORDER BY
    i.item_id;