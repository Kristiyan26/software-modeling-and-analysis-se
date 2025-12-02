INSERT INTO Admin (UserId, PermissionsLevel)
VALUES 
(1, 'SuperAdmin'),
(2, 'Moderator');
GO

INSERT INTO Merchant (UserId, CompanyName)
VALUES 
(3, N'Best Supplements Ltd'),
(4, N'Health & Wellness EOOD'),
(5, N'SportFit Distribution');
GO

INSERT INTO Customer (UserId, FirstName, LastName, DefaultShippingAddress)
VALUES
(6, N'Стоил',  N'Седянков', N'ул. Тестова 1, София'),
(7, N'Мария', N'Иванова',  N'ул. Примерна 5, Пловдив'),
(8, N'Георги', N'Петров', N'бул. Витоша 100, София'),
(9, N'Елена', N'Димитрова', N'ул. Марица 12, Варна'),
(10, N'Иван', N'Стоянов', N'ж.к. Младост 1, София');
GO