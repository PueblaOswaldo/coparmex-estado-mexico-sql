# Análisis de Afiliados — COPARMEX Estado de México

##  Descripción del proyecto

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

01_creacion_base.sql contiene el código SQL utilizado para:

* Crear la base de datos.
* Crear las cinco tablas.
* Definir las claves primarias.
* Definir las claves foráneas.
* Establecer las relaciones entre las tablas.

### 02 — Carga de datos

02_datos.sql contiene los `INSERT` utilizados para poblar las tablas con datos de las empresas afiliadas a COPARMEX Estado de México.

### 03 — Consultas de negocio

03_consultas_negocio.sql contiene las consultas SQL utilizadas para realizar el análisis de los datos y responder las preguntas de negocio planteadas.

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
https://app.powerbi.com/view?r=eyJrIjoiODFkODE4ZWEtZmI2MS00YWFkLTg2MzAtMDgyMzA3ZGViMWY4IiwidCI6ImE5ZTE3ZjllLTkwYmUtNDFkMC04NGViLTZhNDhlYmU5ZmVjMCIsImMiOjR9

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

##  Hallazgos y oportunidades de negocio

El análisis permitió identificar diferentes características de las empresas afiliadas y su distribución por sector, municipio, tamaño y tipo de membresía.

### 1. Distribución de empresas por sector

El análisis de empresas por sector permite identificar cuáles son las actividades económicas con mayor presencia dentro de la base de afiliados.

**Oportunidad de análisis:** esta información podría utilizarse para identificar los sectores con mayor representación y analizar si existe una concentración de servicios, eventos o programas de COPARMEX hacia determinadas actividades económicas.

---

### 2. Distribución geográfica de las empresas

El análisis por municipio permite detectar dónde se concentra la mayor cantidad de empresas afiliadas.

**Oportunidad de análisis:** conocer esta distribución puede ayudar a identificar municipios con una mayor presencia empresarial y otros con menor participación, lo que podría servir como punto de partida para analizar oportunidades de crecimiento de la afiliación o realizar actividades empresariales de manera más focalizada.

---

### 3. Tamaño de las empresas según número de empleados

El análisis del número de empleados permite diferenciar empresas pequeñas y medianas de organizaciones con una plantilla laboral más grande.

Se analizaron específicamente las empresas con más de 50 empleados, las empresas con 50 empleados o menos y aquellas que se encuentran entre 50 y 100 empleados.

**Oportunidad de análisis:** esta segmentación permitiría estudiar si las necesidades de las empresas cambian de acuerdo con su tamaño y si los servicios, capacitaciones o eventos ofrecidos podrían segmentarse de acuerdo con el perfil de cada empresa.

---

### 4. Sectores con mayor cantidad de empresas afiliadas

Al relacionar las tablas de `Empresas`, `Afiliaciones` y `Sectores`, es posible identificar qué sectores concentran un mayor número de empresas afiliadas.

Este análisis agrega una dimensión adicional al simple conteo de empresas, ya que permite estudiar la composición de la cartera de afiliados.

**Oportunidad de análisis:** los sectores con mayor número de afiliados podrían representar grupos prioritarios para analizar participación, permanencia, renovación y demanda de servicios.

---

### 5. Ingresos por tipo de membresía

Se calculó el total de cuotas anuales agrupadas por tipo de membresía.

Este análisis permite identificar qué tipos de membresía representan una mayor contribución económica dentro de la base analizada.

**Oportunidad de análisis:** comparar el número de empresas por tipo de membresía frente a los ingresos generados permitiría evaluar si una membresía con menos empresas afiliadas genera una proporción importante de los ingresos totales.

---

### 6. Relación entre municipio y sector

La combinación de municipio y sector permite identificar dónde se concentran determinadas actividades económicas.

En lugar de analizar únicamente cuántas empresas existen por municipio o por sector, esta consulta permite observar ambas dimensiones simultáneamente.

**Oportunidad de análisis:** esta información podría utilizarse para detectar concentraciones empresariales específicas, por ejemplo, determinados sectores que tienen una fuerte presencia en ciertos municipios.



## Conclusiones

A partir de las consultas realizadas fue posible analizar:

* La cantidad total de empresas.
* La distribución de empresas por sector.
* La distribución geográfica de los afiliados.
* El tamaño de las empresas según número de empleados.
* El promedio y total de empleados.
* Los sectores con mayor presencia dentro de las afiliaciones.
* Los ingresos asociados a los diferentes tipos de membresía.
* La relación entre ubicación geográfica y actividad económica.

El principal aprendizaje del proyecto fue pasar de una base de datos estructurada a información que puede utilizarse para **identificar patrones, segmentar empresas y plantear nuevas preguntas de negocio**.

Es importante destacar que el análisis no pretende establecer decisiones empresariales definitivas, sino demostrar cómo un analista puede utilizar SQL para transformar datos operativos en información útil para la toma de decisiones.






