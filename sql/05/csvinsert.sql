START TRANSACTION;

-- レコード挿入後のテーブルを確認
SELECT
    *
FROM
    s_users;

-- CSVファイルからレコードを挿入
COPY public.s_users (id, name, age)
FROM
    '/tmp/insert-s_users.csv'
WITH
    (FORMAT csv, HEADER TRUE, NULL 'NULL', ENCODING 'UTF8');

-- レコード挿入後のテーブルを確認
SELECT
    *
FROM
    s_users;

ROLLBACK;