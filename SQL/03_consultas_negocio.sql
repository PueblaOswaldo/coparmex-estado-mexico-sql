USE coparmex_afiliados;
SELECT COUNT(*) AS total_empresas
FROM Empresas;
-- ¿Cuántas empresas tenemos actualmente?
SELECT id_sector, COUNT(*) AS total_empresas
FROM Empresas
GROUP BY id_sector;
-- ¿Cuántas empresas tenemos por municipio?
SELECT id_municipio, COUNT(*) AS total_empresas_municipio
FROM Empresas
GROUP BY id_municipio;
-- ¿Cuántas empresas tienen mas de 50 empleados?
SELECT COUNT(*) AS total_empresas
FROM Empresas
WHERE num_empleados>50;

-- ¿Cuántas empresas tienen 50 empleados o menos?
SELECT COUNT(*) AS total_empresas
FROM Empresas
WHERE num_empleados<=50;

-- ¿Cuál es el número máximo de empleados que tiene una empresa?
SELECT MAX(num_empleados) AS maximo_empleados
FROM Empresas;

-- ¿Cuál es el promedio de empleados por empresa?
SELECT AVG(num_empleados) AS promedio_empleados
FROM Empresas;

-- ¿Cuál es el promedio de empleados por sector?
SELECT id_sector, AVG(num_empleados) AS promedio_empleados
FROM Empresas
GROUP BY id_sector;

-- ¿Cuántos empleados tenemos en total en todas las empresas?
SELECT SUM(num_empleados) AS suma_empleados
FROM Empresas;

-- ¿Cuántos empleados tienen en total las empresas que tienen más de 50 empleados?
SELECT SUM(num_empleados) AS total_empleados
FROM Empresas
WHERE num_empleados>50;

-- ¿Cuál es el menor número de empleados que tiene una empresa?
SELECT MIN(num_empleados) AS numero_empleados
FROM Empresas;

-- ¿Cuántas empresas tienen exactamente 100 empleados?
SELECT COUNT(*) AS empresas_con_100_empleados
FROM Empresas
WHERE num_empleados = 100

-- ¿Cuántas empresas tienen entre 50 y 100 empleados
SELECT COUNT(*) AS total_empleados
FROM Empresas
WHERE num_empleados >= 50
AND num_empleados<= 100;

-- Empresas por sector :
SELECT Sectores.nombre_sector, COUNT(*) AS total_empresas
FROM Empresas
JOIN Sectores
ON Empresas.id_sector = Sectores.id_sector
GROUP BY Sectores.nombre_sector;

-- Empresas por municipio
SELECT Municipios.nombre_municipio, COUNT(*) AS total_empresas
FROM Empresas
JOIN Municipios
ON Empresas.id_municipio = Municipios.id_municipio
GROUP BY Municipios.nombre_municipio

-- Promedio de empleados de las empresas por sector
SELECT Sectores.nombre_sector, AVG(Empresas.num_empleados) AS promedio_empleados
FROM Empresas
JOIN Sectores
ON Empresas.id_sector = Sectores.id_sector
GROUP BY Sectores.nombre_sector;

-- Sectores con más empresas afiliadas
SELECT Sectores.nombre_sector, COUNT(*) AS empresas_afiliadas
FROM Afiliaciones
JOIN Empresas
ON Afiliaciones.id_empresa = Empresas.id_empresas
JOIN Sectores
ON Empresas.id_sector = Sectores.id_sector
GROUP BY Sectores.nombre_sector
ORDER BY empresas_afiliadas DESC;

-- Dinero que generan las afiliaciones por tipo de membresía
SELECT Afiliaciones.tipo_membresia, SUM(Afiliaciones.cuota_anual) AS ingresos_membresias
FROM Afiliaciones
GROUP BY Afiliaciones.tipo_membresia
ORDER BY ingresos_membresias DESC;

-- Empresas por municipio y sector
SELECT Municipios.nombre_municipio, Sectores.nombre_sector, COUNT(*) AS total_empresas
FROM Empresas
JOIN Municipios
ON Empresas.id_municipio = Municipios.id_municipio
JOIN Sectores
ON Empresas.id_sector = Sectores.id_sector
GROUP BY Municipios.nombre_municipio, Sectores.nombre_sector
ORDER BY total_empresas DESC;

















