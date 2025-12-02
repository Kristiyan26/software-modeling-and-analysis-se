CREATE TABLE BlogPost
(
    PostId    INT IDENTITY(1,1) CONSTRAINT PK_BlogPost PRIMARY KEY,
    StoreId   INT NOT NULL,
    Title     NVARCHAR(200) NOT NULL,
    Content   NVARCHAR(MAX) NOT NULL,
    CreatedAt DATETIME2      NOT NULL CONSTRAINT DF_BlogPost_CreatedAt DEFAULT SYSDATETIME(),
    Published BIT            NOT NULL CONSTRAINT DF_BlogPost_Published DEFAULT 0,
    CONSTRAINT FK_BlogPost_OnlineStore
        FOREIGN KEY (StoreId) REFERENCES OnlineStore(StoreId)
        ON DELETE CASCADE
);
GO