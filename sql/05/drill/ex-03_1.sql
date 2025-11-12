SELECT
    COUNT(DISTINCT job) || '種類' AS "ジョブ職種"
FROM
    s_characters;