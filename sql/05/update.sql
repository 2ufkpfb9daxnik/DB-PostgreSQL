START TRANSACTION;

UPDATE s_characters
SET
    buff = 0.0;

ROLLBACK;