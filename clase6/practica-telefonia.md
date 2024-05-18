## Consultas

1. Listar los nombres de los usuarios
2. Calcular el saldo máximo de los usuarios de sexo “Mujer”
3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
4. Contar los usuarios sin saldo o inactivos
5. Listar el login de los usuarios con nivel 1, 2 o 3
6. Listar los números de teléfono con saldo menor o igual a 300
7. Calcular la suma de los saldos de los usuarios de la compañia telefónica TELCEL
8. Contar el número de usuarios por compañía telefónica
9. Contar el número de usuarios por nivel
10. Listar el login de los usuarios con nivel 2
11. Mostrar el email de los usuarios que usan gmail
12. Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA

## Respuestas

1. Listar los nombres de los usuarios
   SELECT nombre FROM abonados;

2. Calcular el saldo máximo de los usuarios de sexo “Mujer”
    SELECT MAX(saldo) FROM abonados WHERE sexo = 'm';

3. Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY

SELECT nombre, telefono, marca
FROM abonados
WHERE marca = 'Nokia'
OR marca = 'Blackberry'
OR marca = 'Sony';

SELECT nombre, telefono, marca
FROM abonados
WHERE  marca IN ('Nokia', 'Blackberry', 'Sony');

4. Contar los usuarios sin saldo o inactivos
   SELECT count(idAbonado)
   FROM abonados
   WHERE saldo = 0
   OR activo = 0;

5. Listar el login de los usuarios con nivel 1, 2 o 3
   SELECT usuario    
   FROM abonados  
   WHERE nivel IN(1, 2, 3);


6. Listar los números de teléfono con saldo menor o igual a 300

SELECT telefono
FROM abonados
WHERE saldo <= 300;