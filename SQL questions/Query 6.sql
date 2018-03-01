SELECT sum(Quantity*Unit_Cost) AS Total_Cost, sum(Quantity*Unit_Price) AS Total_Revenue, TYPE1
FROM (SELECT tableB.Unit_Cost,tableB.Unit_Price,tableB.Quantity,tableC.TYPE1 
	FROM tableB
	LEFT JOIN tableC
	ON tableB.Product=tableC.Product) m
GROUP BY TYPE1
ORDER BY Total_Revenue DESC