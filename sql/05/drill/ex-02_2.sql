START TRANSACTION;

UPDATE s_characters
SET
    job = 'Mage';

ROLLBACK;