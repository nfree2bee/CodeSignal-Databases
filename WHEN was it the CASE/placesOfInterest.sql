CREATE PROCEDURE placesOfInterest()
BEGIN
	SELECT country, 
    SUM(IF(leisure_activity_type='Adventure park',number_of_places,0)) AS adventure_park,
    SUM(IF(leisure_activity_type='Golf',number_of_places,0)) AS golf,
    SUM(IF(leisure_activity_type='River cruise',number_of_places,0)) AS river_cruise,
    SUM(IF(leisure_activity_type='kart racing',number_of_places,0)) AS kart_racing
    FROM countryActivities 
    GROUP BY country;
END
