--  a SQL script that creates a function SafeDiv that divides (and returns) the first by the second number or returns 0 if the second number is equal to 0.
CREATE FUNCTION SafeDiv (@a INT, @b INT)
RETURNS FLOAT AS
BEGIN
DECLARE @return_value FLOAT;
IF (@b = 0) SET @return_value = 0;
ELSE SET @return_value = @a / @b;
RETURN @return_value;
END;
