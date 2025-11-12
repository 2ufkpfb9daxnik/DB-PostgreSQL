SELECT
    CASE
        WHEN guild IS NULL THEN 2
        ELSE 1
    END AS "ID",
    CASE
        WHEN guild IS NULL THEN '無所属'
        ELSE 'ギルド所属'
    END "カテゴリ",
    ROUND(AVG(level), 1) AS "avg_lv",
    COUNT(*) AS "num"
FROM
    s_characters
GROUP BY
    CASE
        WHEN guild IS NULL THEN '無所属'
        ELSE 'ギルド所属'
    END,
    CASE
        WHEN guild IS NULL THEN 2
        ELSE 1
    END
ORDER BY
    CASE
        WHEN guild IS NULL THEN 2
        ELSE 1
    END;