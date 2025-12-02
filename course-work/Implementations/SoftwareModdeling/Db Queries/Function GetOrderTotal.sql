CREATE FUNCTION dbo.fn_GetOrderTotal (@OrderId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @total DECIMAL(10,2);
 
    SELECT @total = SUM(Quantity * UnitPrice)
    FROM OrderProduct
    WHERE OrderId = @OrderId;
 
    RETURN ISNULL(@total, 0);
END;
GO