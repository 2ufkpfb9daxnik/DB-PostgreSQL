SELECT
    COUNT(*) AS "num_record",
    COUNT(DISTINCT job) AS "numb_job_distint",
    COUNT(DISTINCT guild) AS "num_guild_distinct"
FROM
    s_characters;