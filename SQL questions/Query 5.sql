SELECT Product, Count(*) as Num 
INTO T
FROM tableB
GROUP BY Product
ORDER BY Num DESC

SELECT *
FROM T
WHERE Num>= (SELECT Max(Num) 
			FROM T 
			WHERE Num<>(SELECT max(Num) FROM T)) 
ORDER BY Num DESC