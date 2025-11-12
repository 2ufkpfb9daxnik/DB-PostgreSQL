SELECT
    COUNT(*) AS "前衛職人数",
    ROUND(AVG(level), 1) AS "前衛職平均Lv"
FROM
    s_characters
WHERE
    job = 'Fighter' OR
    job = 'Monk' OR
    job = 'Samurai' OR
    job = 'Ninja';

SELECT
    COUNT(*) AS "後衛職人数",
    ROUND(AVG(level), 1) AS "後衛職平均Lv"
FROM
    s_characters
WHERE
    job = 'Wizard' OR
    job = 'Priest';