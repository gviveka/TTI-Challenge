SELECT TOP 10 Product,Quantity*(Unit_Price-Unit_Cost) AS profit 
FROM tableB
ORDER BY profit DESC