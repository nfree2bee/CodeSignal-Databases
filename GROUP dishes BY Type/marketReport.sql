CREATE PROCEDURE marketReport()
BEGIN
	(SELECT * FROM 
	 	(SELECT country, COUNT(*) AS competitors
        	FROM foreignCompetitors
        	GROUP BY country 
        	ORDER By country ASC) AS table1)
	UNION
		(SELECT 'Total:', COUNT(*) FROM foreignCompetitors);
END
