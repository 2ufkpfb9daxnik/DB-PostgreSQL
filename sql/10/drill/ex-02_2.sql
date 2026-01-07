-- x_items テーブルから、全キャラクタを通算した所持数量の合計が 5 個以下であるアイテムを抽出し、
-- 次のような結果セットを得るような SQL を記述せよ。ただし、結合ではなくサブクエリを用いた SQL とすること。
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