CREATE TABLE Shipment
(
    ShipmentId     INT IDENTITY(1,1) CONSTRAINT PK_Shipment PRIMARY KEY,
    OrderId        INT NOT NULL,
    Carrier        NVARCHAR(100) NOT NULL,
    TrackingNumber NVARCHAR(100) NULL,
    ShippedAt      DATETIME2 NULL,
    DeliveredAt    DATETIME2 NULL,
    [Status]       NVARCHAR(30) NOT NULL,
    CONSTRAINT FK_Shipment_Order
        FOREIGN KEY (OrderId) REFERENCES [Order](OrderId)
        ON DELETE CASCADE
);
GO