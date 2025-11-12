SELECT
    CASE
        WHEN last_login_at >= DATE '2025-07-01' AND
        last_login_at < DATE '2025-08-01' THEN '2025/07'
        WHEN last_login_at >= DATE '2025-08-01' AND
        last_login_at < DATE '2025-09-01' THEN '2025/08'
        WHEN last_login_at >= DATE '2025-09-01' AND
        last_login_at < DATE '2025-10-01' THEN '2025/09'
        WHEN last_login_at >= DATE '2025-10-01' AND
        last_login_at < DATE '2025-11-01' THEN '2025/10'
        ELSE '(その他)'
    END AS "date",
    COUNT(*) AS "num"
FROM
    s_characters
WHERE
    last_login_at IS NOT NULL
GROUP BY
    CASE
        WHEN last_login_at >= DATE '2025-07-01' AND
        last_login_at < DATE '2025-08-01' THEN '2025/07'
        WHEN last_login_at >= DATE '2025-08-01' AND
        last_login_at < DATE '2025-09-01' THEN '2025/08'
        WHEN last_login_at >= DATE '2025-09-01' AND
        last_login_at < DATE '2025-10-01' THEN '2025/09'
        WHEN last_login_at >= DATE '2025-10-01' AND
        last_login_at < DATE '2025-11-01' THEN '2025/10'
        ELSE '(その他)'
    END
ORDER BY
    "date";