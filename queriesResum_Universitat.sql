USE universidad;

-- Consultes resum:
-- 1. Retorna el nombre total d'alumnes que hi ha.
SELECT count(*) AS nombre_total_alumnes FROM persona WHERE tipo = 'alumno';
-- 2. Calcula quants alumnes van néixer en 1999.
SELECT count(*) AS alumnes_nascuts_al_1999 FROM persona WHERE tipo='alumno' AND YEAR(fecha_nacimiento) = 1999;
-- 3. Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es.
SELECT dp.nombre AS departamento , count(p.id) AS nombre_profressors FROM departamento dp JOIN profesor pr ON dp.id = pr.id_departamento JOIN persona p ON pr.id_profesor = p.id WHERE p.tipo = 'profesor' GROUP BY dp.nombre ORDER BY nombre_profressors DESC;
-- 4. Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors/es associats. Aquests departaments també han d'aparèixer en el llistat.
SELECT dp.nombre AS departamento , count(pr.id_profesor) AS nombre_profressors FROM departamento dp LEFT JOIN profesor pr ON dp.id = pr.id_departamento LEFT JOIN persona p ON pr.id_profesor = p.id AND p.tipo = 'profesor' GROUP BY dp.nombre ORDER BY nombre_profressors DESC;
-- 5. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures.
SELECT g.nombre AS nom_grau, count(a.id) AS nombre_assignatures FROM grado g LEFT JOIN asignatura a ON g.id = a.id_grado GROUP BY nom_grau ORDER BY nombre_assignatures DESC; 
-- 6. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.
SELECT g.nombre AS nom_grau, count(a.id) AS nombre_assignatures FROM grado g LEFT JOIN asignatura a ON g.id = a.id_grado GROUP BY nom_grau HAVING nombre_assignatures > 40 ORDER BY nombre_assignatures DESC;  
-- 7. Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus.
SELECT g.nombre, a.tipo, SUM(a.creditos) AS nombre_credits FROM grado g LEFT JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre, a.tipo ORDER BY  g.nombre, a.tipo DESC;
-- 8. Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats.
SELECT c.anyo_inicio AS inici_curs, count(am.id_alumno) AS matricules_per_curs FROM curso_escolar c LEFT JOIN alumno_se_matricula_asignatura am ON c.id = am.id_curso_escolar GROUP BY c.anyo_inicio;
-- 9. Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.
SELECT p.id AS id_professor , p.nombre, p.apellido1, p.apellido2, count(a.id) AS nombre_assignatures FROM persona p LEFT JOIN asignatura a ON p.id = a.id_profesor WHERE p.tipo = 'profesor' GROUP BY p.id, p.nombre, p.apellido1, p.apellido2 ORDER BY nombre_assignatures DESC;
-- 10. Retorna totes les dades de l'alumne/a més jove.
SELECT * FROM persona p WHERE p.tipo = 'alumno' ORDER BY p.fecha_nacimiento DESC LIMIT 1;
SELECT * FROM persona p WHERE p.tipo = 'alumno' AND p.fecha_nacimiento = (SELECT MAX(fecha_nacimiento) FROM persona WHERE tipo = 'alumno');
-- 11. Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura.
SELECT p.nombre, dp.nombre, count(a.id_profesor) FROM departamento dp JOIN profesor pr ON dp.id = pr.id_departamento JOIN persona p ON pr.id_profesor = p.id LEFT JOIN asignatura a ON p.id = a.id_profesor WHERE p.tipo = 'profesor' GROUP BY p.nombre, dp.nombre HAVING count(a.id_profesor)=0;

