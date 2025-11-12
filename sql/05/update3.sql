START TRANSACTION;

UPDATE s_characters
SET
    level = level + 2;

ROLLBACK;