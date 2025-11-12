SELECT
    COALESCE(guild, '(Freelancer)') AS "guild",
    job,
    COUNT(*)
FROM
    s_characters
GROUP BY
    job,
    guild
ORDER BY
    guild,
    job;