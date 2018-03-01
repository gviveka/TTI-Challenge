SELECT TOP 1 Quarters,sum(Quantity) AS Sold_Num, max(Quantity*Unit_Price) AS Sold_High
FROM (SELECT CATEGORY,datepart(QUARTER,Date1) AS Quarters, datepart(year,Date1) AS Years, Quantity, Unit_price 
		FROM (SELECT tableC.CATEGORY,tableB.Unit_Price,tableB.Quantity,tableB.Date1 
				FROM tableB
				LEFT JOIN tableC
				ON tableB.Product=tableC.Product) m) n
WHERE CATEGORY='AUTOMOTIVE' AND Years=2017
GROUP BY Quarters
ORDER BY Sold_Num DESC