START TRANSACTION;

UPDATE x_characters
SET
    level = level + 2
WHERE
    deleted_at IS NULL AND
    character_id IN (
        SELECT
            ci.character_id
        FROM
            x_character_items AS ci
            JOIN x_items AS i ON ci.item_id = i.item_id
        WHERE
            i.name = 'High Mana Potion' AND
            COALESCE(ci.qty, 0) > 0
    )
RETURNING
    character_id,
    name,
    level AS updated_level;

ROLLBACK;