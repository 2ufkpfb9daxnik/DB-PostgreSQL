START TRANSACTION;

UPDATE s_characters
SET
    buff = SQRT(100 - level) * 0.05;

ROLLBACK;