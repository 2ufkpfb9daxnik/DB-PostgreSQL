SELECT
    ROUND(AVG(level), 2) AS "無所属平均Lv",
    ROUND(SUM(level), 0) AS "無所属合計Lv"
FROM
    s_characters
WHERE
    guild IS NULL;