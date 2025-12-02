CREATE TABLE Customer
(
    CustomerId             INT IDENTITY(1,1) CONSTRAINT PK_Customer PRIMARY KEY,
    UserId                 INT NOT NULL,
    FirstName              NVARCHAR(100) NOT NULL,
    LastName               NVARCHAR(100) NOT NULL,
    DefaultShippingAddress NVARCHAR(500) NULL,
    CONSTRAINT FK_Customer_User
        FOREIGN KEY (UserId) REFERENCES [User](UserId)
        ON DELETE CASCADE
);
GO