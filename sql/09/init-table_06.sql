START TRANSACTION;

CREATE TABLE p_users (
    user_id integer GENERATED ALWAYS AS IDENTITY,
    name varchar(16) NOT NULL,
    zip_code char(8) NOT NULL,
    birthday date NOT NULL,
    locale varchar(5) NOT NULL,
    created_at timestamp NOT NULL,
    deleted_at timestamp,
    PRIMARY KEY (user_id),
    CHECK (name <> ''),
    CHECK (name ~ '^[A-Za-z]*$'),
    CHECK (zip_code ~ '^[0-9]{3}-[0-9]{4}$'),
    CHECK (birthday BETWEEN '1900-01-01' AND current_date),
    CHECK (locale IN ('ja', 'en', 'de', 'ru')),
    CHECK (created_at >= birthday),
    CHECK (created_at >= '2024-12-01'),
    CHECK (
        deleted_at > created_at OR
        deleted_at IS NULL
    )
);

ROLLBACK;