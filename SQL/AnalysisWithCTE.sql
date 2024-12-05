use AdventureWorksDW2022

;WITH AmountSold AS(
	SELECT
		COUNT(S.OrderDateKey) AS 'Number of Orders',
		P.EnglishProductName,
		PS.EnglishProductSubcategoryName,
		PC.EnglishProductCategoryName,
		T.SalesTerritoryCountry
	FROM FactInternetSales as s
	INNER JOIN
		DimProduct as P ON P.ProductKey = S.ProductKey
	INNER JOIN
		DimProductSubcategory AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
	INNER JOIN
		DimProductCategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
	INNER JOIN
		DimSalesTerritory AS T ON T.SalesTerritoryKey = S.SalesTerritoryKey
	GROUP BY
		P.EnglishProductName,
		PS.EnglishProductSubcategoryName,
		PC.EnglishProductCategoryName,
		T.SalesTerritoryCountry
)

SELECT
	SUM([Number of Orders]) AS 'Number of Orders',
	SalesTerritoryCountry,
	EnglishProductCategoryName
FROM AmountSold
WHERE
	EnglishProductCategoryName = 'Bikes'
GROUP BY
	SalesTerritoryCountry,
	EnglishProductCategoryName
ORDER BY 1 DESC


