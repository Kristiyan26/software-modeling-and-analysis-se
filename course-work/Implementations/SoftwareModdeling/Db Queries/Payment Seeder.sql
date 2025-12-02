------------------------------------------------------------
-- 6.14 Payments
------------------------------------------------------------
INSERT INTO Payment (OrderId, PaymentDate, Amount, Method, [Status])
VALUES
(1, DATEADD(DAY, -7, SYSDATETIME()), dbo.fn_GetOrderTotal(1), 'Card', 'Paid'),
(2, DATEADD(DAY, -5, SYSDATETIME()), dbo.fn_GetOrderTotal(2), 'Card', 'Paid'),
(3, DATEADD(DAY, -3, SYSDATETIME()), dbo.fn_GetOrderTotal(3), 'PayPal', 'Paid'),
(4, DATEADD(DAY, -2, SYSDATETIME()), dbo.fn_GetOrderTotal(4), 'COD', 'Pending'),
(5, DATEADD(HOUR, -12, SYSDATETIME()), dbo.fn_GetOrderTotal(5), 'Card', 'Authorized'),
(6, DATEADD(DAY, -15, SYSDATETIME()), dbo.fn_GetOrderTotal(6), 'Card', 'Paid'),
(7, DATEADD(DAY, -20, SYSDATETIME()), dbo.fn_GetOrderTotal(7), 'BankTransfer', 'Paid');
GO