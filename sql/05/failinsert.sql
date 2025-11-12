-- トランザクションの開始
START TRANSACTION;

-- 操作1 Carol の登録 (成功)
INSERT INTO
    s_users (id, name, age)
VALUES
    (3, 'Carol', 18);

-- 操作2 Dave の登録 (成功)
INSERT INTO
    s_users (id, name, age)
VALUES
    (4, 'Dave', NULL);

-- 操作3 Ellen の登録 (❌失敗 id=4 が重複) 
INSERT INTO
    s_users (id, name, age)
VALUES
    (4, 'Ellen', 17);

-- START TRANSACTION 以降の全ての操作が成功していれば「確定」
COMMIT;

-- テーブルの状態を確認
SELECT
    *
FROM
    s_users;
