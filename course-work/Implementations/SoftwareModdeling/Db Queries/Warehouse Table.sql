CREATE TABLE Warehouse
(
    WarehouseId INT IDENTITY(1,1) CONSTRAINT PK_Warehouse PRIMARY KEY,
    [Name]      NVARCHAR(200) NOT NULL,
    [Address]   NVARCHAR(300) NOT NULL,
    City        NVARCHAR(100) NOT NULL
);
GO