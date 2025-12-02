------------------------------------------------------------
-- 6.9 ShoppingCarts
------------------------------------------------------------
INSERT INTO ShoppingCart (CustomerId, CreatedAt, [Status])
VALUES
(1, DATEADD(DAY, -1, SYSDATETIME()), 'Open'),
(2, DATEADD(DAY, -2, SYSDATETIME()), 'Completed'),
(3, DATEADD(HOUR, -5, SYSDATETIME()), 'Open'),
(4, DATEADD(DAY, -10, SYSDATETIME()), 'Abandoned'),
(5, SYSDATETIME(), 'Open');
GO