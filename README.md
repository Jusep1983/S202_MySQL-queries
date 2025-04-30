# S202_MySQL-queries
## 📄 Descripción

Este repositorio contiene una colección de consultas SQL sobre dos bases de datos diferentes: una tienda de productos informáticos y una universidad. Los ejercicios están organizados por nivel y dificultad creciente, abarcando consultas básicas, joins, subconsultas, funciones de agregación y más.

## 🔽 Enunciados:
 <details>
  <summary>    
   ▸Base de datos Tienda◂
    
  (clica en el desplegable para ver el detalle completo de consultas) 
    
  - Consultas 1 a 41 sobre productos, fabricantes, filtros, ordenaciones, funciones, joins y agrupaciones.
   
  </summary>
  
    1. Lista el nombre de todos los productos que hay en la tabla producto.
    2. Lista los nombres y los precios de todos los productos de la tabla producto.
    3. Lista todas las columnas de la tabla producto.
    4. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
    5. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Usa los siguientes alias para las columnas: nombre_producto, euros, dólares.
    6. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
    7. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
    8. Lista el nombre de todos los fabricantes en una columna, y en otra columna obtén en mayúsculas los dos primeros caracteres del nombre del fabricante.
    9. Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
    10. Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
    11. Lista el código de los fabricantes que tienen productos en la tabla producto.
    12. Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.
    13. Lista los nombres de los fabricantes ordenados de manera ascendente.
    14. Lista los nombres de los fabricantes ordenados de manera descendente.
    15. Lista los nombres de los productos ordenados, primero por nombre de manera ascendente y luego por precio de manera descendente.
    16. Retorna una lista con las 5 primeras filas de la tabla fabricante.
    17. Retorna una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también debe incluirse en la respuesta.
    18. Lista el nombre y el precio del producto más barato. (Usa solamente las cláusulas ORDER BY y LIMIT). NOTA: No puedes usar MIN(precio), necesitarías GROUP BY.
    19. Lista el nombre y el precio del producto más caro. (Usa solamente las cláusulas ORDER BY y LIMIT). NOTA: No puedes usar MAX(precio), necesitarías GROUP BY.
    20. Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.
    21. Retorna una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
    22. Retorna una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordena el resultado por el nombre del fabricante, en orden alfabético.
    23. Retorna una lista con el código del producto, nombre del producto, código del fabricante y nombre del fabricante, de todos los productos de la base de datos.
    24. Retorna el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
    25. Retorna el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
    26. Retorna una lista de todos los productos del fabricante Lenovo.
    27. Retorna una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
    28. Retorna un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Sin utilizar el operador IN.
    29. Retorna un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Usando el operador IN.
    30. Retorna un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termina con la vocal e.
    31. Retorna un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contiene el carácter w en su nombre.
    32. Retorna un listado con el nombre del producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordena el resultado, primero por precio (en orden descendente) y luego por nombre (en orden ascendente).
    33. Retorna un listado con el código y el nombre de fabricante, solo de aquellos fabricantes que tienen productos asociados en la base de datos.
    34. Retorna un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno. El listado debe mostrar también aquellos fabricantes que no tienen productos asociados.
    35. Retorna un listado donde solo aparezcan aquellos fabricantes que no tienen ningún producto asociado.
    36. Retorna todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).
    37. Retorna todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin usar INNER JOIN).
    38. Lista el nombre del producto más caro del fabricante Lenovo.
    39. Lista el nombre del producto más barato del fabricante Hewlett-Packard.
    40. Retorna todos los productos de la base de datos que tienen un precio mayor o igual al producto más caro del fabricante Lenovo.
    41. Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio de todos sus productos.
     
  </details>
 <details>
  <summary>    
   ▸Base de datos Universidad◂

  (clica en el desplegable para ver el detalle completo de consultas) 
    
  - Consultas básicas (1-9): alumnos, profesores, asignaturas, grados y departamentos.
  - LEFT JOIN y RIGHT JOIN (1-6): relaciones entre profesores, departamentos y asignaturas.
  - Consultas de resumen (1-11): uso de COUNT, SUM, GROUP BY, HAVING y subconsultas para obtener métricas y rankings.
   
  </summary>

    -- Consultas básicas (1-9)
    1. Retorna un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos. El listado debe estar ordenado alfabéticamente de menor a mayor por primer apellido, segundo apellido y nombre.
    2. Averigua el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos.
    3. Retorna el listado de los alumnos que nacieron en 1999.
    4. Retorna el listado de profesores que no han dado de alta su número de teléfono en la base de datos y además su NIF termina en K.
    5. Retorna el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.
    6. Retorna un listado de los profesores junto con el nombre del departamento al que están vinculados. El listado debe retornar cuatro columnas: primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.
    7. Retorna un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con NIF 26902806M.
    8. Retorna un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).
    9. Retorna un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.
    
    -- Consultas con LEFT JOIN y RIGHT JOIN (1-6)
    1. Retorna un listado con los nombres de todos los profesores y los departamentos a los que están vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado debe retornar cuatro columnas: nombre del departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y nombre.
    2. Retorna un listado con los profesores que no están asociados a un departamento.
    3. Retorna un listado con los departamentos que no tienen profesores asociados.
    4. Retorna un listado con los profesores que no imparten ninguna asignatura.
    5. Retorna un listado con las asignaturas que no tienen un profesor asignado.
    6. Retorna un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.
    
    -- Consultas resumen (1-11)
    1. Retorna el número total de alumnos que hay.
    2. Calcula cuántos alumnos nacieron en 1999.
    3. Calcula cuántos profesores hay en cada departamento. El resultado solo debe mostrar dos columnas: una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. El resultado solo debe incluir los departamentos que tienen profesores asociados y estará ordenado de mayor a menor por el número de profesores.
    4. Retorna un listado con todos los departamentos y el número de profesores que hay en cada uno. Ten en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también deben aparecer en el listado.
    5. Retorna un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Ten en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también deben aparecer en el listado. El resultado estará ordenado de mayor a menor por el número de asignaturas.
    6. Retorna un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.
    7. Retorna un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura. El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo.
    8. Retorna un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares. El resultado debe mostrar dos columnas: una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados.
    9. Retorna un listado con el número de asignaturas que imparte cada profesor. El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. El resultado estará ordenado de mayor a menor por el número de asignaturas.
    10. Retorna todas las datos del alumno más joven.
    11. Retorna un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.


</details>

## 💻 Tecnologías Utilizadas

El proyecto ha sido desarrollado utilizando:

- MySQL 8+ para la ejecución de las consultas.

- MySQL Workbench como entorno visual de desarrollo.

- Git y GitHub para el control de versiones.

## 📋 Requisitos

- Tener MySQL instalado (se recomienda la versión 8 o superior).

- Tener un cliente SQL o entorno como Workbench o DBeaver.

- Conocimientos básicos de SQL.

- Git instalado para clonar el repositorio.

## 🛠️ Instalación

Clona este repositorio:

- git clone:

      https://github.com/Jusep1983/S202_MySQL-queries.git

- Abre tu cliente SQL favorito (por ejemplo, Workbench).

- Importa las bases de datos necesarias schema_tienda.sql y schema_universidad.sql. Ambas se alojan en este repositorio en la carpeta sample_databases.

- Abre los ficheros de consultas del repositorio y ejecútalos.

## ▶️ Ejecución

Simplemente abre las sentencias .sql y ejecútelas.

## 🌐 Despliegue

Este proyecto está pensado para entorno local. No se contempla despliegue online.

## 🤝 Contribuciones

Si tienes mejoras, nuevas consultas, o quieres proponer nuevos retos SQL, ¡haz un fork del repo y lanza un pull request!

¡Gracias por tu interés en este proyecto! 🚀
