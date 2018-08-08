DROP PROCEDURE IF EXISTS legsCount;
CREATE PROCEDURE legsCount()
    SELECT SUM(if(type='human',2,4)) as summary_legs
    FROM creatures
    ORDER BY id;
