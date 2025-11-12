START TRANSACTION;

-- 更新前のレコードを確認
SELECT
    id,
    name,
    job
FROM
    s_characters
WHERE
    job IN ('Wizard', 'Priest')
ORDER BY
    id;

-- 更新処理 👉 Priest ならば Wizard に変更
UPDATE s_characters
SET
    job = 'Wizard'
WHERE
    job = 'Priest';

-- 更新処理 👉 Wizard ならば Priest に変更
UPDATE s_characters
SET
    job = 'Priest'
WHERE
    job = 'Wizard';

-- 更新後のレコードを確認
SELECT
    id,
    name,
    job
FROM
    s_characters
WHERE
    job IN ('Wizard', 'Priest')
ORDER BY
    id;

ROLLBACK;