-- Consultes bàsiques:
-- 1. Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes, ordenat alfabèticament.
SELECT apellido1, apellido2 , nombre FROM persona WHERE tipo='alumno' ORDER BY apellido1, apellido2 , nombre;
-- 2. Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades.
SELECT nombre, apellido1, apellido2 FROM persona WHERE tipo='alumno' AND telefono IS NULL;
-- 3. Retorna el llistat dels alumnes que van néixer en 1999.
SELECT * FROM persona WHERE tipo='alumno' AND fecha_nacimiento BETWEEN '1999-01-01' AND '1999-12-31';
-- SELECT * FROM persona WHERE tipo='alumno' AND YEAR(fecha_nacimiento) = 1999;
-- 4. Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K.
SELECT * FROM persona WHERE tipo='profesor' AND telefono IS NULL AND nif LIKE '%K';
-- 5. Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.
SELECT * FROM asignatura WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;
-- 6. Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes: primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.
SELECT p.*, d.nombre 'departamento' FROM persona p JOIN profesor pr ON p.id = pr.id_profesor JOIN departamento d ON d.id = pr.id_profesor WHERE tipo='profesor';
-- 7. Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M.
SELECT p.nif, a.nombre 'asignatura',  c.anyo_inicio 'año_inicio', c.anyo_fin 'año_final' FROM asignatura a JOIN alumno_se_matricula_asignatura am ON a.id = am.id_asignatura JOIN curso_escolar c ON am.id_curso_escolar =  c.id JOIN persona p ON p.id = am.id_alumno WHERE p.tipo = 'alumno' AND p.nif = '26902806M';
-- 8. Retorna un llistat amb el nom de tots els departaments que tenen professors/es que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).
SELECT dp.nombre FROM departamento dp JOIN profesor pr ON dp.id = pr.id_departamento JOIN persona p ON pr.id_profesor = p.id JOIN asignatura a ON p.id = a.id_profesor JOIN grado g ON a.id_grado = g.id WHERE g.id = 4 GROUP BY dp.nombre;
-- 9. Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.
SELECT p.* FROM persona p JOIN alumno_se_matricula_asignatura am ON p.id = am.id_alumno JOIN curso_escolar c ON am.id_curso_escolar = c.id WHERE c.id = 5 GROUP BY p.id;
 