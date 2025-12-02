CREATE TABLE CartProduct
(
    CartId    INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity  INT NOT NULL,
    CONSTRAINT PK_CartProduct PRIMARY KEY (CartId, ProductId),
    CONSTRAINT FK_CartProduct_Cart
        FOREIGN KEY (CartId) REFERENCES ShoppingCart(CartId)
        ON DELETE CASCADE,
    CONSTRAINT FK_CartProduct_Product
        FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
        ON DELETE NO ACTION
);
GO