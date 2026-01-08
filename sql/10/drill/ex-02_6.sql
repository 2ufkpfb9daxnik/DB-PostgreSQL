SELECT
    *
FROM
    x_items
WHERE
    x_items.weight_kg = (
        SELECT
            MAX(x_items.weight_kg)
        FROM
            x_items
    );