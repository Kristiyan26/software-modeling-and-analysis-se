CREATE TABLE Review
(
    ReviewId   INT IDENTITY(1,1) CONSTRAINT PK_Review PRIMARY KEY,
    CustomerId INT NOT NULL,
    ProductId  INT NOT NULL,
    Rating     TINYINT NOT NULL,
    Comment    NVARCHAR(MAX) NULL,
    CreatedAt  DATETIME2 NOT NULL CONSTRAINT DF_Review_CreatedAt DEFAULT SYSDATETIME(),
    CONSTRAINT FK_Review_Customer
        FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId)
        ON DELETE CASCADE,
    CONSTRAINT FK_Review_Product
        FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
        ON DELETE NO ACTION
);
GO