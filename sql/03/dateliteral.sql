SELECT
    id,
    name,
    CAST('2026-03-31' AS DATE) - CURRENT_DATE || '日' AS "卒業まであと"
FROM
    s_users;