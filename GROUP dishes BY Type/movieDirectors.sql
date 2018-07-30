CREATE PROCEDURE movieDirectors()
BEGIN
	SELECT director FROM moviesInfo WHERE year >= 2000 GROUP BY director HAVING sum(oscars) ORDER BY director;
END
