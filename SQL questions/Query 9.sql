SELECT Product 
FROM (SELECT tableC.Product,tableB.Quantity
		FROM tableC
		LEFT JOIN tableB
		ON tableC.Product=tableB.Product) m
WHERE Quantity is NULL