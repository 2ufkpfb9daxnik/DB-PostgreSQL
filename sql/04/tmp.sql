SELECT
    *
FROM
    s_characters
WHERE
    guild NOT IN ('Yamato', NULL);

-- Yamato と NULL 以外を抽出したい