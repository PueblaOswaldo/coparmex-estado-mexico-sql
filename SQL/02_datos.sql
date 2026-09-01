USE coparmex_afiliados;
DELETE FROM Municipios
WHERE id_municipio > 0;
SELECT *
FROM Municipios;
ALTER TABLE Municipios AUTO_INCREMENT = 1;
INSERT INTO Municipios
(nombre_municipio, estado)
VALUES
('Metepec', 'Estado de México'),
('Lerma', 'Estado de México'),
('Zinacantepec', 'Estado de México'),
('Almoloya de Juárez', 'Estado de México'),
('Calimaya', 'Estado de México'),
('San Mateo Atenco', 'Estado de México'),
('Mexicaltzingo', 'Estado de México');

INSERT INTO Sectores
(nombre_sector)
VALUES
('Comercio'),
('Servicios'),
('Industria'),
('Construcción'),
('Tecnología'),
('Transporte');

SELECT * 
FROM Sectores;

INSERT INTO Empresas
(nombre_empresa, id_sector, id_municipio, num_empleados, fecha_afiliacion, estado_membresia)
VALUES
('Grupo Industrial Toluca', 3, 1, 120, '2022-03-15', 'Activa'),
('Actinver', 1, 2, 45, '2023-01-10', 'Activa'),
('Ad Talent', 2, 3, 30, '2021-07-20', 'Activa'),
('Arsoba Consultores', 4, 4, 85, '2022-11-05', 'Suspendida'),
('Tecnologías del Valle', 5, 1, 60, '2024-02-01', 'Activa'),
('Transportes Mexiquenses', 6, 7, 150, '2020-09-12', 'Activa'),
('Dental Jens', 1, 6, 25, '2023-06-18', 'Cancelada'),
('Manufacturas Almoloya', 3, 5, 200, '2021-04-30', 'Activa'),
('Ulax', 2, 1, 18, '2024-01-15', 'Activa'),
('BPS Group', 6, 2, 95, '2022-08-22', 'Suspendida'),
('Cruz Roja Mexicana', 5, 1, 40, '2023-10-11', 'Activa'),
('Ferretería Lerma', 1, 3, 35, '2022-05-09', 'Activa'),
('Amdame Asociación', 4, 6, 70, '2021-12-03', 'Activa'),
('Servicios Atenco', 2, 7, 22, '2024-03-08', 'Activa'),
('Industrial Zinacantepec', 3, 4, 175, '2020-02-17', 'Cancelada');

SELECT *
FROM Empresas;

INSERT INTO Afiliaciones
(id_empresa, fecha_inicio, fecha_fin, tipo_membresia, cuota_anual)
VALUES
(1, '2022-03-15', '2023-03-14', 'Corporativa', 25000.00),
(2, '2022-01-10', '2023-01-09', 'Premium', 15000.00),
(3, '2021-07-20', '2022-07-19', 'Básica', 8000.00),
(4, '2022-11-05', '2023-11-04', 'Premium', 15000.00),
(5, '2022-02-01', '2023-01-31', 'Corporativa', 25000.00),
(6, '2020-09-12', '2021-09-11', 'Corporativa', 25000.00),
(7, '2022-06-18', '2023-06-17', 'Básica', 8000.00),
(8, '2021-04-30', '2022-04-29', 'Corporativa', 25000.00),
(9, '2022-01-15', '2023-01-14', 'Básica', 8000.00),
(10, '2022-08-22', '2023-08-21', 'Premium', 15000.00),
(11, '2022-10-11', '2023-10-10', 'Premium', 15000.00),
(12, '2022-05-09', '2023-05-08', 'Básica', 8000.00),
(13, '2021-12-03', '2022-12-02', 'Premium', 15000.00),
(14, '2022-03-08', '2023-03-07', 'Básica', 8000.00),
(15, '2020-02-17', '2021-02-16', 'Corporativa', 25000.00);

SELECT *
FROM Afiliaciones;

INSERT INTO Renovaciones
(id_afiliacion, fecha_renovacion, monto, renovado)
VALUES
(1, '2023-03-15', 25000.00, TRUE),
(2, '2023-01-10', 15000.00, TRUE),
(3, '2022-07-20', 8000.00, TRUE),
(4, '2023-11-05', 15000.00, FALSE),
(5, '2023-02-01', 25000.00, TRUE),
(6, '2021-09-12', 25000.00, TRUE),
(7, '2023-06-18', 8000.00, FALSE),
(8, '2022-04-30', 25000.00, TRUE),
(9, '2023-01-15', 8000.00, TRUE),
(10, '2023-08-22', 15000.00, FALSE),
(11, '2023-10-11', 15000.00, TRUE),
(12, '2023-05-09', 8000.00, TRUE),
(13, '2022-12-03', 15000.00, TRUE),
(14, '2023-03-08', 8000.00, TRUE),
(15, '2021-02-17', 25000.00, FALSE);

SELECT *
FROM Renovaciones;






