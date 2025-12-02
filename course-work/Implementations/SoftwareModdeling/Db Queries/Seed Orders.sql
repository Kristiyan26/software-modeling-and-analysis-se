------------------------------------------------------------
-- 6.11 Orders
------------------------------------------------------------
INSERT INTO [Order] (CustomerId, StoreId, CreatedAt, [Status])
VALUES
(1, 1, DATEADD(DAY, -7, SYSDATETIME()), 'Completed'),
(2, 2, DATEADD(DAY, -5, SYSDATETIME()), 'Completed'),
(3, 1, DATEADD(DAY, -3, SYSDATETIME()), 'Shipped'),
(4, 3, DATEADD(DAY, -2, SYSDATETIME()), 'Processing'),
(5, 4, DATEADD(HOUR, -12, SYSDATETIME()), 'Pending'),
(1, 1, DATEADD(DAY, -15, SYSDATETIME()), 'Completed'),
(3, 2, DATEADD(DAY, -20, SYSDATETIME()), 'Completed');
GO