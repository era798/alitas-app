-- Crear tabla para el menú del negocio
CREATE TABLE productos (producto_id SERIAL PRIMARY KEY, 
nombre VARCHAR (100) NOT NULL,
categoria VARCHAR (50) NOT NULL,
precio DECIMAL (10,2) NOT NULL,
descripcion TEXT,
imagen_url TEXT,
disponible BOOLEAN DEFAULT TRUE);
-- Registrar productos iniciales
INSERT INTO productos (nombre, categoria, precio, descripcion)
VALUES (
'1kg de ALITAS',
'Alitas',
270.00,
'1kg de alitas y 4oz de aderezo ranch.'), (
'ALITAS Familia',
'Alitas',
300.00,
'1 kg de alitas con papas a la francesa y 4 oz de aderezo ranch'), (
'MIX ALITAS Y BONELESS',
'Mix',
700.00,
'1 kilo de alitas 1 kilo de boneless 10 dedos de quso 16 aros de cebolla'), (
'Papas a la Francesa (250G)',
'Entradas',
40.00,
'250 gr de papas a la francesa'),
('Papas Queso',
'Entradas',
45.00,
'Papas con queso250 g'), (
'Papas a la Francesa Bañadas',
'Entradas',
45.00,
'250 g de papas a la francesa, bañados con nuestra salsa original'), (
'Papas Ranch, queso y salsa',
'Entradas',
60.00,
'Papas Ranch, queso y sasa'), (
'Papas Bañadas en Salsa y Queso Amarillo',
'Entradas',
55.00,
'250gr de papas a la francesa, bañadas con nuestra salsa original y queso amarillo'), (
'Papas a la Francesa grandes',
'Entradas',
70.00,
'600gr Papas a la francesa'), (
'Papas Crisscut (250gr)',
'Entradas',
45.00,
'250gr de papas crisscut'), (
'Papas Gajo (250gr)',
'Entradas',
45.00,
'250 gr de papas gajo'), (
'Dedos de Queso CINCO (5)',
'Entradas',
75.00,
'Dedos de Queso 5 piezas'), (
'Dedeos de Queso DIEZ',
'Entradas',
130.00,
'Dedos de Queso 10 piezas'), (
'Jalapeño poppers (5)',
'Entradas',
75.00,
'5 Jalapeños poppers'), (
'Aros de Cebolla (8)',
'Entradas',
60.00,
'Aros de Cebolla 8 pieza'), (
'Elotes Familiares',
'Entradas',
200.00,
'4 Elotes Bañados en Aderezo Ranch, Salsa de la casa y Queso'), (
'Elote con Papas',
'Entradas',
75.00,
'Incluye: Elote, Papas a la Francesa, Ranch, Quesoy Salsa dela Casa'), (
'Elote',
'Entradas',
75.00,
'Elote bañado con Ranch, Queso y Salsa de la Casa'), (
'Boneless 250 G',
'Boneless',
90.00,
'250 gr de boneless bañados de tu salsa favorita y ranch'), (
'Boneless 300 G',
'Boneless',
115.00,
'300 gr de boneless, papas a la francesa y aderezo ranch, salsa favorita a elegir'), (
'Boneless 500 G',
'Boneless',
170.00,
'500 gr de boneless, papas a la francesa, 2 oz de aderezo rancha, salsa a elegir'), (
'1kg de Boneless',
'Boneless',
250.00,
'1kg de boneless y 4 oz de aderezo ranch'), (
'2kg de boneless',
'Boneless',
450.00,
'2kg de boneless y 8oz aderezo ranch'), (
'Boneless Familiar',
'Boneless',
280.00,
'1kg de boneless, papas a la francesa y 4 oz de aderezo ranch'), (
'Mix Familiar (solo Boneless)',
'Mix',
400.00,
'1kg de boneless, 8 dedeos de queso, 8 aros de cebolla, papas a la francesa y 4 oz aderezo ranch'), (
'Mix (solo Boneless)',
'Boneless',
600.00,
'2kg de boneless, 10 dedos de queso, 16 aros de cebolla, papas a la francesa y 4 oz de aderezo ranch'), (
'Mix Familiar (Alitas',
'Mix',
420.00,
'1kg de Alitas, papas, 8 dedos de quesao, 8 aros de cebolla y 4 oz de ranch'), (
'Mix Familiar Poppers (Boneless)',
'Mix',
420.00,
'1kg de Alitas, papas, 8 dedos de queso, 8 aros de cebolla, y 4 oz de aderezo ranch'), (
'Mix Familiar Poppers (Alitas)',
'Mix',
440.00,
'1kg de Alitas, papas a la francesa, , 8 dedos de queso, 4 jalapeños popper y 4oz de derezo ranch'), (
'Familiar Alitas y Boneless',
'Mix',
420.00,
'1kg de Alitas, 1kg de Boneless, papas a la francesa y 4 oz de aderezo ranch'), (
'Mix Pareja',
'Mix',
220.00,
'500gr de boneless, papas a la francesa, 4 dedos de queso, 4 aros de cebolla y 2 oz de aderezo ranch'), (
'Mix Familiar Elote',
'Mix',
420.00,
'1kg de Boneless, papas a la francesa, 8 dedos de queso, 8 aros de cebolla, 1 Elote Amarillo y 4 oz de aderezo rancho'), (
'Mix Complementos',
'Mix',
200.00,
' 2 Elotes, 6 Dedos de Queso, 6 Jalapeños y 8 Aros de Cebolla'), (
'Tender',
'Tenders',
125.00,
'300 gr de tenders, 300 gr de papas, todos esto bañado en queso, aderezo ranchy tu salsa favorita'), (
'Tenders Kids',
'Tenders',
50.00,
'150 gr de tenders, 150 gr de papascon derezo a elegir, catsup o queso'), (
'Botella Aderezo Ranch',
'Salsas',
60.00,
'Aderezo ranch 460ml'), (
'Botella Salsa Bufalo',
'Salsas',
60.00,
'Salsa Bufalo 460 ml'), (
'Botella Salsa Mango Habanero',
'Salsas',
60.00,
'Salsa Mango Habanero 460 ml'), (
'Botella Salsa BBQ',
'Salsas',
60.00,
'Salsa BBQ 460 ml'), (
'Botella Salsa Lemon Pepper',
'Salsas',
60.00,
'Salsa Lemon Pepper 460 ml'), (
'Ranch',
'Salsas',
15.00,
'1 oz de aderezo ranch'), (
'Bufalo',
'Salsas',
15.00,
'1 oz de salsa bufalo'), (
'Mango Habanero',
'Salsas',
15.00,
'1oz de salsa mango habanero'), (
'BBQ',
'Salsas',
15.00,
'1 oz de salsa BBQ'), (
'Salsa de la Casa',
'Salsas',
15.00,
'1 oz de salsa de la casa'), (
'Lemon Pepper',
'Salsas',
15.00,
'1 oz de salsa lemon pepper'), (
'Teriyaki',
'Salsas',
15.00,
'1 oz de salsa teriyaki'), (
'Honey Mustard',
'Salsas',
15.00,
'1 oz de honey mustard'), (
'Queso',
'Salsas',
15.00,
'1 oz de queso'), (
'Pepsi 400 mls',
'Bebidas',
15.00,
'Pepsi 400 ml'), (
'Pepsi 600 ml',
'Bebidas',
22.00,
'Pepsi 600 mil'), (
'Pepsi 1.5 l',
'Bebidas',
35.00,
'Pepsi 1.5l'), (
'Coca Cola 600 ml',
'Bebidas',
22.00,
'Coca Cola 600 ml'), (
'Coca Cola 1.75 ml',
'Bebidas',
45.00,
'Coca Cola 1.75l');
SELECT * FROM productos
ORDER BY categoria ASC, nombre ASC;