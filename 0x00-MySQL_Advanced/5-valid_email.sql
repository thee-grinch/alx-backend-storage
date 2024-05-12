-- a script that creates a trigger to reset  valid email
DROP TRIGGER IF EXISTS reset_email;
DELIMITER //
CREATE TRIGGER reset_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email != OLD.email THEN
        SET NEW.valid_email = 0;
    END IF;
END //
DELIMITER ;