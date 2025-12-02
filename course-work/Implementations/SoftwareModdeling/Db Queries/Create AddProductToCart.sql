CREATE PROCEDURE dbo.usp_AddProductToCart
    @CustomerId INT,
    @ProductId  INT,
    @Quantity   INT
AS
BEGIN
    SET NOCOUNT ON;
 
    DECLARE @CartId INT;
 
    SELECT TOP (1) @CartId = CartId
    FROM ShoppingCart
    WHERE CustomerId = @CustomerId
      AND [Status] = 'Open'
    ORDER BY CreatedAt DESC;

    IF @CartId IS NULL
    BEGIN
        INSERT INTO ShoppingCart (CustomerId, CreatedAt, [Status])
        VALUES (@CustomerId, SYSDATETIME(), 'Open');
 
        SET @CartId = SCOPE_IDENTITY();
    END
 
    -- Upsert за CartProduct
    IF EXISTS (SELECT 1 FROM CartProduct WHERE CartId = @CartId AND ProductId = @ProductId)
    BEGIN
        UPDATE CartProduct
        SET Quantity = Quantity + @Quantity
        WHERE CartId = @CartId AND ProductId = @ProductId;
    END
    ELSE
    BEGIN
        INSERT INTO CartProduct (CartId, ProductId, Quantity)
        VALUES (@CartId, @ProductId, @Quantity);
    END
 
    SELECT cp.CartId, cp.ProductId, cp.Quantity
    FROM CartProduct cp
    WHERE cp.CartId = @CartId;
END;
GO