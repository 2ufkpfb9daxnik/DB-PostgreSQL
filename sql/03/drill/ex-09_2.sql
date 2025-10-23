WITH
    t AS (
        SELECT
            id, --下のselectするときにtに含まれている必要がある
            name, -- 下のselectするときにtに含まれている必要がある
            last_login_at,
            (CAST('2025-10-15' AS date) - CAST(last_login_at AS date)) AS days_since
        FROM
            s_characters
    )
SELECT
    id,
    name,
    TO_CHAR(last_login_at, 'YYYY-MM-DD') AS "Last Login",
    days_since || ' days ago' AS "Days Since Last Login",
    CASE
        WHEN days_since < 50 THEN 'Yes'
        ELSE 'No'
    END AS "Is Active User?"
FROM
    t;

-- 以下と同等
-- SELECT
--     id,
--     name,
--     TO_CHAR(last_login_at, 'YYYY-MM-DD') AS "Last Login",
--     (CAST('2025-10-15' AS date) - CAST(last_login_at AS date)) || ' days ago' AS "Days Since Last Login",
--     CASE
--         WHEN (CAST('2025-10-15' AS date) - CAST(last_login_at AS date)) < 50 THEN 'Yes'
--         ELSE 'No'
--     END AS "Is Active User?"
-- FROM
--     s_characters;