CREATE PROCEDURE newsSubscribers()
BEGIN
	SELECT subscriber FROM full_year WHERE instr(newspaper,'Daily')
    UNION
    SELECT subscriber FROM half_year WHERE instr(newspaper,'Daily') ORDER BY subscriber;
END
