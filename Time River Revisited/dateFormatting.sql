CREATE PROCEDURE dateFormatting()
BEGIN
	SELECT DATE_FORMAT(date_str,'%Y-%m-%d') 'date_iso' FROM documents;
END
