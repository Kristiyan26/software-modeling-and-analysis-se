CREATE TABLE OrderProduct
(
    OrderId   INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity  INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    CONSTRAINT PK_OrderProduct PRIMARY KEY (OrderId, ProductId),
    CONSTRAINT FK_OrderProduct_Order
        FOREIGN KEY (OrderId) REFERENCES [Order](OrderId)
        ON DELETE CASCADE,
    CONSTRAINT FK_OrderProduct_Product
        FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
        ON DELETE NO ACTION
);
GO