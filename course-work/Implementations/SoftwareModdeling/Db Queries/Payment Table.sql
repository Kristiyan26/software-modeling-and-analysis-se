CREATE TABLE Payment
(
    PaymentId   INT IDENTITY(1,1) CONSTRAINT PK_Payment PRIMARY KEY,
    OrderId     INT NOT NULL,
    PaymentDate DATETIME2     NOT NULL,
    Amount      DECIMAL(10,2) NOT NULL,
    Method      NVARCHAR(50)  NOT NULL,
    [Status]    NVARCHAR(30)  NOT NULL,
    CONSTRAINT FK_Payment_Order
        FOREIGN KEY (OrderId) REFERENCES [Order](OrderId)
        ON DELETE CASCADE
);
GO