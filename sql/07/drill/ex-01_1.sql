-- トランザクションの開始
START TRANSACTION;

-- p_users テーブルの作成 (ここを記述)
DROP TABLE IF EXISTS p_users;

CREATE TABLE p_users (
    user_id integer PRIMARY KEY,
    name varchar(16) NOT NULL,
    is_admin boolean NOT NULL,
    height_cm decimal,
    birthday date
);

-- p_users テーブルにレコードを挿入 (ここを記述)
INSERT INTO
    p_users (user_id, name, is_admin, height_cm, birthday)
VALUES
    (1, 'Alice', TRUE, 162.3, date '2003-10-20'),
    (2, 'Bob', FALSE, 181.9, date '2002-05-05'),
    (3, 'Charlie', FALSE, NULL, NULL),
    (4, 'Ellen', TRUE, 172.7, NULL),
    (5, 'Eve', FALSE, NULL, date '2024-06-30');

-- テーブルの確認
SELECT
    *
FROM
    p_users;

-- p_users テーブルを集計 (ここを記述)
-- ロールバックによる処理の取り消し
ROLLBACK;