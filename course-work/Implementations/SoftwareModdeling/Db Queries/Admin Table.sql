CREATE TABLE Admin
(
    AdminId          INT IDENTITY(1,1) CONSTRAINT PK_Admin PRIMARY KEY,
    UserId           INT NOT NULL,
    PermissionsLevel NVARCHAR(100) NOT NULL,
    CONSTRAINT FK_Admin_User
        FOREIGN KEY (UserId) REFERENCES [User](UserId)
        ON DELETE CASCADE
);
GO