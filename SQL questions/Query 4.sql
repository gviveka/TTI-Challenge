SELECT TableA.Parent_MFG,T.MFG_Code,T.Total_Cost, T.Total_Price, T.Margins
FROM TableA
LEFT JOIN 
	(SELECT MFG_Code, Sum(Quantity*Unit_Price) as Total_Price,sum(Quantity*Unit_Cost) as Total_Cost,sum((Unit_Price-Unit_Cost)*100/Unit_Price) as Margins
	FROM TableB
	GROUP BY MFG_Code) T
ON TableA.MFG_Code=B.MFG_Code