CREATE PROCEDURE marketReport()
BEGIN
	SELECT country, COUNT(*) AS competitors
    FROM foreignCompetitors
    GROUP BY country 
    UNION
    SELECT 'Total:', COUNT(*) FROM foreignCompetitors;
END
