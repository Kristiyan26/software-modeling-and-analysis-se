CREATE TABLE Category
(
    CategoryId   INT IDENTITY(1,1) CONSTRAINT PK_Category PRIMARY KEY,
    StoreId      INT NOT NULL,
    [Name]       NVARCHAR(200) NOT NULL,
    Slug         NVARCHAR(200) NOT NULL,
    [Description] NVARCHAR(MAX) NULL,
    CONSTRAINT UQ_Category_Store_Slug UNIQUE (StoreId, Slug),
    CONSTRAINT FK_Category_OnlineStore
        FOREIGN KEY (StoreId) REFERENCES OnlineStore(StoreId)
        ON DELETE CASCADE
);
GO