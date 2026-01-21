COPY (
    SELECT
        *
    FROM
        x_characters
) TO '/tmp/x_characters.csv'
WITH
    (FORMAT csv, HEADER TRUE, ENCODING 'UTF8');