CREATE TRIGGER trg_OrderProduct_UpdateOrderTotal
ON OrderProduct
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
 
    ;WITH ChangedOrders AS (
        SELECT DISTINCT OrderId FROM inserted
        UNION
        SELECT DISTINCT OrderId FROM deleted
    )
    UPDATE o
    SET TotalAmount = ISNULL(x.Total, 0)
    FROM [Order] o
    JOIN ChangedOrders co ON co.OrderId = o.OrderId
    OUTER APPLY (
        SELECT SUM(Quantity * UnitPrice) AS Total
        FROM OrderProduct op
        WHERE op.OrderId = o.OrderId
    ) x;
END;
GO