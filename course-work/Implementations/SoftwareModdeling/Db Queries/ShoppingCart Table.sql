CREATE TABLE ShoppingCart
(
    CartId      INT IDENTITY(1,1) CONSTRAINT PK_ShoppingCart PRIMARY KEY,
    CustomerId  INT NOT NULL,
    CreatedAt   DATETIME2 NOT NULL CONSTRAINT DF_ShoppingCart_CreatedAt DEFAULT SYSDATETIME(),
    [Status]    NVARCHAR(30) NOT NULL,
    CONSTRAINT FK_ShoppingCart_Customer
        FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId)
        ON DELETE CASCADE
);
GO