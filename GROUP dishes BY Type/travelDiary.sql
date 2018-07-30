CREATE PROCEDURE travelDiary()
BEGIN
	SELECT group_concat(DISTINCT country SEPARATOR ';') AS countries FROM diary; 
END
