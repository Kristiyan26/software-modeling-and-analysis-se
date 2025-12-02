CREATE TABLE ProductCategory
(
    ProductId  INT NOT NULL,
    CategoryId INT NOT NULL,
    CONSTRAINT PK_ProductCategory PRIMARY KEY (ProductId, CategoryId),
    CONSTRAINT FK_ProductCategory_Product
        FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
        ON DELETE CASCADE,
    CONSTRAINT FK_ProductCategory_Category
        FOREIGN KEY (CategoryId) REFERENCES Category(CategoryId)
        ON DELETE NO ACTION
);
GO