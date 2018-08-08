CREATE PROCEDURE combinationLock()
BEGIN
    SET @c = 1;
    SELECT @c := @c * LENGTH(characters) AS combinations
    FROM discs
    ORDER BY combinations DESC
    LIMIT 1;
END
