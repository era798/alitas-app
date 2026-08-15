CREATE TABLE detalle_pedidos (
detalle_id SERIAL PRIMARY KEY,
pedido_id INT NOT NULL,
producto_id INT NOT NULL,
cantidad INT NOT NULL DEFAULT 1,
precio_unitario NUMERIC (10, 2) NOT NULL,
CONSTRAINT fk_pedido
    FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id) ON DELETE CASCADE,
CONSTRAINT fk_product
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
	);