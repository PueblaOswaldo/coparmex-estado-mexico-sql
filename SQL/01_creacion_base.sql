CREATE DATABASE coparmex_afiliados;
USE coparmex_afiliados;
CREATE TABLE Municipios (
id_municipio INT PRIMARY KEY AUTO_INCREMENT,
nombre_municipio VARCHAR(100) NOT NULL,
estado VARCHAR(100) NOT NULL
);
CREATE TABLE Sectores (
id_sector INT PRIMARY KEY AUTO_INCREMENT,
nombre_sector VARCHAR(100) NOT NULL
);
CREATE TABLE Empresas (
id_empresas INT PRIMARY KEY AUTO_INCREMENT,
nombre_empresa VARCHAR (150) NOT NULL,
id_sector INT,
id_municipio INT,
num_empleados INT,
fecha_afiliacion DATE,
estado_membresia VARCHAR(20), -- "Activa", "Suspendida", "Cancelada"
FOREIGN KEY (id_sector) REFERENCES Sectores(id_sector),
FOREIGN KEY (id_municipio) REFERENCES Municipios(id_municipio)
);
CREATE TABLE Afiliaciones (
id_afiliacion INT PRIMARY KEY AUTO_INCREMENT,
id_empresa INT,
fecha_inicio DATE,
fecha_fin DATE,
tipo_membresia VARCHAR (50), -- "Básica", "Premium", "Corporativa"
cuota_anual DECIMAL(10,2),
FOREIGN KEY (id_empresa) REFERENCES Empresas(id_empresas)
);
CREATE TABLE Renovaciones (
id_renovacion INT PRIMARY KEY AUTO_INCREMENT,
id_afiliacion INT,
fecha_renovacion DATE,
monto DECIMAL(10,2),
renovado BOOLEAN, 
FOREIGN KEY (id_afiliacion) REFERENCES Afiliaciones(id_afiliacion)
);







