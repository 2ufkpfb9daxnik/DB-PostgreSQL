-- トランザクションの開始
START TRANSACTION;

INSERT INTO
    s_users (id, name, age)
VALUES
    (3, 'Carol', 18);

-- テーブルの状態を確認 👉 Carol のレコードが存在する
SELECT
    *
FROM
    s_users;

-- 明示的にロールバックを実行
ROLLBACK;

-- テーブルの状態を確認 👉 Carol のレコードが存在しない
SELECT
    *
FROM
    s_users;