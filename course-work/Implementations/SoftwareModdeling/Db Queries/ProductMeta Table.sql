CREATE TABLE ProductMeta
(
    MetaId    INT IDENTITY(1,1) CONSTRAINT PK_ProductMeta PRIMARY KEY,
    ProductId INT NOT NULL,
    MetaKey   NVARCHAR(100) NOT NULL,
    MetaValue NVARCHAR(MAX) NULL,
    CONSTRAINT FK_ProductMeta_Product
        FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
        ON DELETE CASCADE
);
GO