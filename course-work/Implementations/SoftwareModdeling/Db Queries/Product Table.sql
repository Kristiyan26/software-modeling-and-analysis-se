CREATE TABLE Product
(
    ProductId     INT IDENTITY(1,1) CONSTRAINT PK_Product PRIMARY KEY,
    StoreId       INT NOT NULL,
    [Name]        NVARCHAR(200) NOT NULL,
    [Description] NVARCHAR(MAX) NULL,
    BasePrice     DECIMAL(10,2) NOT NULL,
    SupplierPrice DECIMAL(10,2) NOT NULL,
    SKU           NVARCHAR(64)  NOT NULL,
    CONSTRAINT UQ_Product_SKU UNIQUE (SKU),
    CONSTRAINT FK_Product_OnlineStore
        FOREIGN KEY (StoreId) REFERENCES OnlineStore(StoreId)
        ON DELETE CASCADE
);
GO