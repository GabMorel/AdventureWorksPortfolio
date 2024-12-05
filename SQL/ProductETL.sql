use AdventureWorksDW2022

SELECT DISTINCT
	S.ProductKey,
	P.EnglishProductName
FROM
	FactInternetSales as S
INNER JOIN
	DimProduct as P
	on p.Productkey = s.ProductKey

Select Distinct
	P.Productkey,
	P.ProductAlternateKey,
	P.EnglishProductName,
	P.ProductSubcategoryKey,
	P.ModelName
FROM DimProduct as P
INNER JOIN 
	FactInternetSales as S
	ON S.ProductKey = P.ProductKey
WHERE
	S.ProductKey = P.ProductKey