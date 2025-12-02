CREATE TABLE ProductWarehouse
(
    ProductId        INT NOT NULL,
    WarehouseId      INT NOT NULL,
    StockQuantity    INT NOT NULL,
    DeliveryTimeDays INT NOT NULL,
    CONSTRAINT PK_ProductWarehouse PRIMARY KEY (ProductId, WarehouseId),
    CONSTRAINT FK_ProductWarehouse_Product
        FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
        ON DELETE CASCADE,
    CONSTRAINT FK_ProductWarehouse_Warehouse
        FOREIGN KEY (WarehouseId) REFERENCES Warehouse(WarehouseId)
        ON DELETE CASCADE
);
GO