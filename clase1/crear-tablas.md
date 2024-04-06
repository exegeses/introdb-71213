# Crear tablas dentro de una base de datos

> para crear una tabla dentro de una base de datos 
> utilizamos el comando **CREATE TABLE**

> Sintáxis: 

    CREATE TABLE nombreTabla    
    (   
        nombreColumna1 tipoDato ...,
        nombreColumna2 tipoDato ...,
        nombreColumna3 tipoDato ...,
        nombreColumna4 tipoDato ...
    ); 

> Ejemplo práctico: 

    CREATE TABLE personas   
    (
        id smallint unsigned....,
        apellido varchar(50)....,
        nombre varchar(50)....,
        dni int unsigned....,
        alta date ....
    );