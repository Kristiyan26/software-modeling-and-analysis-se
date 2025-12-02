CREATE TABLE Merchant
(
    MerchantId  INT IDENTITY(1,1) CONSTRAINT PK_Merchant PRIMARY KEY,
    UserId      INT NOT NULL,
    CompanyName NVARCHAR(200) NOT NULL,
    CONSTRAINT FK_Merchant_User
        FOREIGN KEY (UserId) REFERENCES [User](UserId)
        ON DELETE CASCADE
);
GO