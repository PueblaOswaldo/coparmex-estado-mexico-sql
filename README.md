# Análisis de Afiliados — COPARMEX Estado de México

## 📊 Descripción del proyecto

Proyecto de análisis de datos desarrollado con **MySQL** para simular un sistema de gestión y análisis de empresas afiliadas a COPARMEX Estado de México.

El proyecto parte de un modelo relacional compuesto por municipios, sectores, empresas, afiliaciones y renovaciones. A partir de esta estructura se realizaron consultas SQL orientadas a responder preguntas de negocio relacionadas con el número de empresas afiliadas, distribución por sector y municipio, número de empleados, tipos de membresía e ingresos por afiliaciones.

Los resultados fueron posteriormente utilizados para desarrollar un **dashboard interactivo en Power BI**.

---

##  Objetivo

Construir una base de datos relacional que permita analizar información de empresas afiliadas y generar indicadores útiles para apoyar la toma de decisiones.

El proyecto busca responder preguntas como:

* ¿Cuántas empresas están afiliadas?
* ¿Cómo se distribuyen las empresas por sector?
* ¿En qué municipios se concentran más empresas?
* ¿Cuál es el promedio de empleados por empresa?
* ¿Qué sectores concentran más empresas afiliadas?
* ¿Qué tipos de membresía generan mayores ingresos?
* ¿Cómo se distribuyen las empresas según su número de empleados?

---

##  Modelo de datos

La base de datos está compuesta por cinco tablas principales:

### Municipios

Contiene los municipios asociados a las empresas.

### Sectores

Contiene los sectores económicos utilizados para clasificar las empresas.

### Empresas

Contiene información de las empresas afiliadas, incluyendo:

* Nombre de la empresa
* Sector
* Municipio
* Número de empleados
* Fecha de afiliación
* Estado de la membresía

### Afiliaciones

Contiene información sobre:

* Empresa afiliada
* Fecha de inicio
* Fecha de finalización
* Tipo de membresía
* Cuota anual

### Renovaciones

Contiene información sobre:

* Afiliación correspondiente
* Fecha de renovación
* Monto
* Estado de renovación

### Relaciones

El modelo utiliza las siguientes relaciones:

```text
Municipios 1 ──── N Empresas
Sectores   1 ──── N Empresas
Empresas   1 ──── N Afiliaciones
Afiliaciones 1 ──── N Renovaciones
```

---

##  Tecnologías utilizadas

* **MySQL**
* **MySQL Workbench**
* **Power BI**
* **Visual Studio Code**



### 01 — Creación de la base de datos

Contiene el código SQL utilizado para:

* Crear la base de datos.
* Crear las cinco tablas.
* Definir las claves primarias.
* Definir las claves foráneas.
* Establecer las relaciones entre las tablas.

### 02 — Carga de datos

Contiene los `INSERT` utilizados para poblar las tablas con datos de las empresas afiliadas a COPARMEX Estado de México.

### 03 — Consultas de negocio

Contiene las consultas SQL utilizadas para realizar el análisis de los datos y responder las preguntas de negocio planteadas.

---

## Dashboard en Power BI

Los resultados obtenidos mediante SQL fueron utilizados como fuente para desarrollar un dashboard interactivo en Power BI.

El dashboard permite visualizar indicadores relacionados con:

* Total de empresas.
* Empresas por sector.
* Distribución de empresas por municipio.
* Tipos de membresía.
* Número de empleados.

**Dashboard público:**
[Agregar aquí el enlace público de Power BI]

---

##  Metodología

El proyecto fue desarrollado siguiendo un flujo de trabajo reproducible:

1. Diseño del modelo relacional.
2. Creación de la base de datos en MySQL.
3. Creación de tablas y relaciones mediante claves primarias y foráneas.
4. Carga de datos.
5. Exploración de la información mediante consultas SQL.
6. Elaboración de preguntas de negocio.
7. Análisis mediante `SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `JOIN` y funciones de agregación.
8. Conexión de MySQL con Power BI.
9. Construcción de un dashboard para visualizar los principales resultados.




