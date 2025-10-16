SELECT
    id,
    name,
    CASE
        WHEN guild ISNULL THEN '(無所属)' -- NULL判定には ISNULL を使用
        ELSE guild
    END AS "guild"
FROM
    s_characters;