------------------------------------------------------------
-- 6.10 CartProduct
------------------------------------------------------------
INSERT INTO CartProduct (CartId, ProductId, Quantity)
VALUES
(1, 1, 2),  -- cart 1: 2 x Whey Chocolate
(1, 6, 1),  -- cart 1: 1 x Creatine
(1, 13, 1), -- cart 1: 1 x Shaker
(2, 15, 3), -- old completed cart
(3, 8, 2),  -- cart 3: 2 x BCAA
(3, 10, 1), -- cart 3: 1 x Pre-Workout
(3, 11, 3), -- cart 3: 3 x Protein Bar
(5, 22, 1), -- cart 5: 1 x Omega-3
(5, 25, 2); -- cart 5: 2 x Ashwagandha
GO