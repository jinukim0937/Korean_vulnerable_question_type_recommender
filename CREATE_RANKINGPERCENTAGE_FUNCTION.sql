DELIMITER $$
DROP FUNCTION IF EXISTS RankingPercentage $$

CREATE FUNCTION RankingPercentage(
	varRanking Double,
    varUserNumber Double)
RETURNS CHAR(10) DETERMINISTIC
BEGIN
	DECLARE VarX Double;
    SET VarX = varRanking / varUserNumber *100;
    SET VarX = ROUND(VarX, 2);
    RETURN CONCAT(CAST(VarX AS CHAR(7)), '%');
END 
$$
DELIMITER ;RankingPercentageRankingPercentage

SELECT RankingPercentage(2, 10);