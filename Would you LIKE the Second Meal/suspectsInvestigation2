CREATE PROCEDURE suspectsInvestigation2()
BEGIN
	SELECT id,name,surname FROM Suspect WHERE height <= 170 OR upper(surname) NOT LIKE 'gre_n' OR upper(name) NOT LIKE 'B%' ORDER BY id;
END
