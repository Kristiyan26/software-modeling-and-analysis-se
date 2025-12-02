CREATE TABLE [Order]
(
    OrderId    INT IDENTITY(1,1) CONSTRAINT PK_Order PRIMARY KEY,
    CustomerId INT NOT NULL,
    StoreId    INT NOT NULL,
    CreatedAt  DATETIME2     NOT NULL CONSTRAINT DF_Order_CreatedAt DEFAULT SYSDATETIME(),
    [Status]   NVARCHAR(30)  NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL CONSTRAINT DF_Order_TotalAmount DEFAULT 0,
    CONSTRAINT FK_Order_Customer
        FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId)
        ON DELETE CASCADE,
    CONSTRAINT FK_Order_OnlineStore
        FOREIGN KEY (StoreId) REFERENCES OnlineStore(StoreId)
        ON DELETE NO ACTION
);