-- a  SQL script that creates a stored procedure AddBonus that adds a new correction for a student

DELIMITER //
CREATE PROCEDURE AddBonus(IN user_id INT, IN  project_name VARCHAR(255), IN score INT)
BEGIN
    DECLARE project_id INT;
    SELECT id INTO project_id FROM projects WHERE projects.name = project_name;
    if (project_id IS NULL) THEN
        BEGIN
         INSERT INTO projects (name) VALUES (project_name);
         SET project_id = LAST_INSERT_ID();
        END;
    END IF;
    INSERT INTO corrections (user_id, project_id, score)
    VALUES (user_id, project_id, score);
END //

DELIMITER ;