DROP TABLE IF EXISTS p_users;

START TRANSACTION;

CREATE TABLE p_users (
    user_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(16) NOT NULL CHECK (name <> '') CHECK (name ~ '^[A-Za-z]*$'),
    zip_code char(8) NOT NULL CHECK (zip_code ~ '^[0-9]{3}-[0-9]{4}$'),
    birthday date NOT NULL CHECK (birthday BETWEEN '1900-01-01' AND current_date),
    locale varchar(5) NOT NULL CHECK (locale IN ('ja', 'en', 'de', 'ru')),
    created_at timestamp NOT NULL CHECK (
        created_at >= birthday AND
        created_at >= '2024-12-01'
    ),
    deleted_at timestamp CHECK (deleted_at > created_at)
);

INSERT INTO
    p_users (name, zip_code, birthday, locale, created_at)
VALUES
    (
        'Alice',
        '572-8572',
        '2001-03-012',
        'zh',
        DATE_TRUNC('second', current_timestamp)
    );

SELECT
    *
FROM
    p_users;

ROLLBACK;