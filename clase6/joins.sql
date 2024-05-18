SELECT nombre, apellido, departamento
FROM empleados
JOIN departamentos
  ON empleados.idDepartamento = departamentos.idDepartamento;
/*
Trae los datos de los empleados que están asignados a un departamento
Si no tienen un departamento asignado no aparecen en el listado
*/

--
SELECT nombre, apellido, departamento
FROM empleados
 LEFT JOIN departamentos
   ON empleados.idDepartamento = departamentos.idDepartamento;
/*
Trae los datos de todos los empleados
Incluso los que no tienen un departamento asignado
*/
SELECT empleados.nombre,
       empleados.apellido,
       (SELECT departamento
        FROM departamentos
        WHERE idDepartamento = empleados.idDepartamento)
           AS departamento
FROM empleados;
/* cortesía de Maxi Debeljuh */




--
SELECT nombre, apellido, departamento
FROM empleados
 RIGHT JOIN departamentos
   ON empleados.idDepartamento = departamentos.idDepartamento;
/*
Trae los datos de todos los departamentos
Incluso si no hay empleados asignados
*/

