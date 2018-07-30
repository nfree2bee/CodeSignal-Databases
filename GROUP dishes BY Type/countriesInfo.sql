CREATE PROCEDURE countriesInfo()
BEGIN
	SELECT COUNT(*) AS number, avg(population) AS average, sum(population) AS total FROM countries;
END
