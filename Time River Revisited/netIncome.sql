CREATE PROCEDURE netIncome()
BEGIN
    SELECT 
        YEAR(date) AS year, 
        QUARTER(date) AS quarter, 
        SUM(CAST(profit AS SIGNED)-CAST(loss AS SIGNED)) AS net_profit
    FROM accounting
    GROUP BY year, quarter;
END
