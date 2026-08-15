CREATE TABLE pedidos (pedido_id SERIAL PRIMARY KEY,
clientes_id INT NOT NULL,
fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
estatus VARCHAR (20) DEFAULT 'Pendientes', -- Ejemplo: Pendiente, En preparacion, Entregado, Cancelado
total NUMERIC (10, 2) NOT NULL DEFAULT 0.00,
CONSTRAINT fk_cliente
    FOREIGN KEY (clientes_id)
	REFERENCES clientes(clientes_id)
	ON DELETE CASCADE);
INSERT INTO pedidos (clientes_id, estatus, total)
VALUES (1, 'En preparación' 250.00);
SELECT
	    p.pedido_id,
		c.nombre AS cliente,
		c. telefono,
		p.fecha_pedido,
		p.estatus,
		p.total
FROM pedidos p
JOIN clientes c ON p.clientes_id = c.clientes_id;