CREATE PROCEDURE interestClub()
    SELECT name
    FROM people_interests
    WHERE interests & 1 AND interests & 2
    ORDER BY name
