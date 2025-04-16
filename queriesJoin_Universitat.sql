USE universidad;
-- Consultes amb LEFT JOIN i RIGHT JOIN:
-- He realitzat totes les consultes amb amb LEFT JOIN i RIGHT JOIN per a que mostrin el mateix resultat
-- 1. Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats, incloent els professors/es sense departament.
SELECT p.nombre AS profesor, dp.nombre AS departamento FROM persona p  LEFT JOIN profesor pr ON p.id = pr.id_profesor LEFT JOIN departamento dp ON pr.id_departamento = dp.id WHERE p.tipo = 'profesor';
SELECT p.nombre AS profesor, d.nombre AS departamento FROM departamento d RIGHT JOIN profesor pr ON d.id = pr.id_departamento RIGHT JOIN persona p ON pr.id_profesor = p.id WHERE p.tipo = 'profesor';
-- 2. Retorna un llistat amb els professors/es que no estan associats a un departament.
SELECT p.nombre AS profesores_sin_departamento FROM persona p  LEFT JOIN profesor pr ON p.id = pr.id_profesor LEFT JOIN departamento dp ON pr.id_departamento = dp.id WHERE p.tipo = 'profesor' AND dp.nombre IS NULL; 
SELECT p.nombre AS profesores_sin_departamento FROM departamento dp RIGHT JOIN profesor pr ON dp.id = pr.id_departamento JOIN persona p ON pr.id_profesor = p.id WHERE p.tipo = 'profesor' AND dp.nombre IS NULL;
-- 3. Retorna un llistat amb els departaments que no tenen professors/es associats.
SELECT dp.nombre AS departamentos_sin_profe FROM departamento dp LEFT JOIN profesor pr ON dp.id = pr.id_departamento LEFT JOIN persona p ON pr.id_profesor = p.id AND p.tipo = 'profesor' WHERE p.id IS NULL ORDER BY dp.id;
SELECT dp.nombre AS departamentos_sin_profe FROM profesor pr RIGHT JOIN departamento dp ON pr.id_departamento = dp.id LEFT JOIN persona p ON pr.id_profesor = p.id AND p.tipo = 'profesor' WHERE p.id IS NULL ORDER BY dp.id;
-- 4. Retorna un llistat amb els professors/es que no imparteixen cap assignatura.
SELECT p.nombre AS profesores_liberados FROM persona p LEFT JOIN profesor pr ON p.id = pr.id_profesor LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor WHERE p.tipo = 'profesor' AND a.id_profesor IS NULL;
SELECT p.nombre AS profesores_liberados FROM asignatura a RIGHT JOIN profesor pr ON a.id_profesor = pr.id_profesor RIGHT JOIN persona p ON pr.id_profesor = p.id WHERE p.tipo = 'profesor' AND a.id_profesor IS NULL;
-- 5. Retorna un llistat amb les assignatures que no tenen un professor/a assignat.
SELECT a.nombre AS asignaturas_sin_profesor FROM asignatura a LEFT JOIN profesor pr ON a.id_profesor = pr.id_profesor LEFT JOIN persona p ON pr.id_profesor = p.id WHERE a.id_profesor IS NULL;
SELECT a.nombre AS asignaturas_sin_profesor FROM profesor pr RIGHT JOIN asignatura a ON a.id_profesor = pr.id_profesor WHERE pr.id_profesor IS NULL;
-- 6. Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.
SELECT dp.nombre AS nombre_departamento FROM departamento dp LEFT JOIN profesor pr ON dp.id = pr.id_departamento LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor LEFT JOIN alumno_se_matricula_asignatura am ON a.id = am.id_asignatura LEFT JOIN curso_escolar c ON am.id_curso_escolar = c.id GROUP BY nombre_departamento HAVING COUNT(am.id_asignatura) = 0;
SELECT dp.nombre AS nombre_departamento FROM alumno_se_matricula_asignatura am RIGHT JOIN asignatura a ON am.id_asignatura = a.id RIGHT JOIN profesor pr ON a.id_profesor  = pr.id_profesor RIGHT JOIN departamento dp  ON pr.id_departamento = dp.id GROUP BY dp.nombre HAVING COUNT(am.id_asignatura) = 0;
