------------------------------------------------------------
-- 7. Примерни заявки за проверка
------------------------------------------------------------
PRINT '=== Users ===';
SELECT UserId, Username, [Role], Email FROM [User];
GO

PRINT '=== Products Count by Store ===';
SELECT s.StoreName, COUNT(p.ProductId) AS ProductCount
FROM OnlineStore s
LEFT JOIN Product p ON s.StoreId = p.StoreId
GROUP BY s.StoreName;
GO

PRINT '=== Categories Count by Store ===';
SELECT s.StoreName, COUNT(c.CategoryId) AS CategoryCount
FROM OnlineStore s
LEFT JOIN Category c ON s.StoreId = c.StoreId
GROUP BY s.StoreName;
GO

PRINT '=== Price Range of Products ===';
SELECT 
    MIN(BasePrice) AS MinPrice,
    MAX(BasePrice) AS MaxPrice,
    AVG(BasePrice) AS AvgPrice,
    COUNT(*) AS TotalProducts
FROM Product;
GO

PRINT '=== Orders with Total ===';
SELECT OrderId, CustomerId, StoreId, [Status], TotalAmount, 
       dbo.fn_GetOrderTotal(OrderId) AS ComputedTotal,
       CreatedAt
FROM [Order]
ORDER BY CreatedAt DESC;
GO

PRINT '=== Top 5 Products by Reviews ===';
SELECT TOP 5 
    p.[Name],
    COUNT(r.ReviewId) AS ReviewCount,
    AVG(CAST(r.Rating AS DECIMAL(3,2))) AS AvgRating
FROM Product p
LEFT JOIN Review r ON p. ProductId = r.ProductId
GROUP BY p.ProductId, p.[Name]
ORDER BY ReviewCount DESC, AvgRating DESC;
GO

PRINT '=== Stock Levels by Warehouse ===';
SELECT 
    w.[Name] AS Warehouse,
    COUNT(pw.ProductId) AS ProductCount,
    SUM(pw.StockQuantity) AS TotalStock
FROM Warehouse w
LEFT JOIN ProductWarehouse pw ON w. WarehouseId = pw. WarehouseId
GROUP BY w. WarehouseId, w.[Name];
GO

PRINT '=== Script completed successfully! ===';
GO