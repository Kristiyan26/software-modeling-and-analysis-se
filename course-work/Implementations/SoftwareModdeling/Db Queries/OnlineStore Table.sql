CREATE TABLE OnlineStore
(
    StoreId     INT IDENTITY(1,1) CONSTRAINT PK_OnlineStore PRIMARY KEY,
    MerchantId  INT NOT NULL,
    StoreName   NVARCHAR(200) NOT NULL,
    Domain      NVARCHAR(255) NOT NULL,
    CreatedAt   DATETIME2      NOT NULL CONSTRAINT DF_OnlineStore_CreatedAt DEFAULT SYSDATETIME(),
    CONSTRAINT FK_OnlineStore_Merchant
        FOREIGN KEY (MerchantId) REFERENCES Merchant(MerchantId)
        ON DELETE CASCADE
);
GO