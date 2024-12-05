USE AdventureWorksDW2022 

SELECT   
    SUM(S.SalesAmount) AS 'SalesAmount',  
    T.SalesTerritoryCountry  
FROM   
    FactInternetSales AS S  
INNER JOIN   
    DimSalesTerritory AS T  
ON   
    T.SalesTerritoryKey = S.SalesTerritoryKey  
GROUP BY   
    T.SalesTerritoryCountry  
ORDER BY   
    1 DESC