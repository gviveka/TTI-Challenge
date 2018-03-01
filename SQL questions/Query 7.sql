SELECT TOP 1 Quarters,Years,count(*) AS Sold_Num 
FROM (SELECT datepart(QUARTER,Date1) AS Quarters, datepart(year,Date1) AS Years 
	FROM tableB) m
GROUP BY QUARTERS,Years
ORDER BY Sold_Num DESC