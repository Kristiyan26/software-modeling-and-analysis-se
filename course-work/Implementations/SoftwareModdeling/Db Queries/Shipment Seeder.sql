------------------------------------------------------------
-- 6.13 Shipments
------------------------------------------------------------
INSERT INTO Shipment (OrderId, Carrier, TrackingNumber, ShippedAt, DeliveredAt, [Status])
VALUES
(1, N'Speedy',  N'SP123456', DATEADD(DAY, -6, SYSDATETIME()), DATEADD(DAY, -5, SYSDATETIME()), 'Delivered'),
(2, N'Econt',   N'EC987654', DATEADD(DAY, -4, SYSDATETIME()), DATEADD(DAY, -2, SYSDATETIME()), 'Delivered'),
(3, N'Speedy',  N'SP234567', DATEADD(DAY, -2, SYSDATETIME()), NULL, 'InTransit'),
(4, N'DHL',     NULL, NULL, NULL, 'Pending'),
(6, N'Econt',   N'EC876543', DATEADD(DAY, -14, SYSDATETIME()), DATEADD(DAY, -13, SYSDATETIME()), 'Delivered'),
(7, N'Speedy',  N'SP345678', DATEADD(DAY, -19, SYSDATETIME()), DATEADD(DAY, -18, SYSDATETIME()), 'Delivered');
GO