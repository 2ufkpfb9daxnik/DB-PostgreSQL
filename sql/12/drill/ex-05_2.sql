START TRANSACTION;

UPDATE x_characters AS c
SET
    level = c.level + 2
FROM
    x_character_items AS ci
    JOIN x_items AS i ON ci.item_id = i.item_id
WHERE
    c.character_id = ci.character_id AND
    c.deleted_at IS NULL AND
    i.name = 'High Mana Potion' AND
    COALESCE(ci.qty, 0) > 0
RETURNING
    c.character_id,
    c.name,
    c.level AS updated_level;

ROLLBACK;