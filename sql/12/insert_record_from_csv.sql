COPY public.s_users (id, name, age)
FROM
    '/temp/insert-s_users.csv'
WITH
    (FORMAT csv, HEADER TRUE, NULL 'NULL', ENCODING 'UTF8');