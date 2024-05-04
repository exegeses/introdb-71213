# Modificación de la estructura de una tabla

> Modificar la estructura de una tabla significa que nosotros queremos cambiar por ejemplo el nombre de una columna o por ejemplo queremos cambiar el tipo de datos de una columna o también podemos agregar o eliminar columnas

## Modificar nombre de una columna

    ALTER TABLE nombreTabla  
      CHANGE nombreActual nombreNuevo tipo;  

    ALTER TABLE personas
      CHANGE inicio alta date not null;

## Modificar tipo de dato de una columna

    ALTER TABLE nombreTabla  
      MODIFY nombreColumna tipo;

    ALTER TABLE personas
      MODIFY apellido varchar(50) not null;

## Agregar una nueva columna al final de la tabla

    ALTER TABLE nombreTabla  
      ADD nombreColumna tipo catacterísticas;  

    ALTER TABLE personas  
      ADD anotaciones varchar(200);

## Agregar una nueva columna después de una columna existente

    ALTER TABLE nombreTabla  
      ADD nombreColumnaNueva tipo catacterísticas   
      AFTER nombreColExistente;  

    ALTER TABLE personas  
      ADD anotaciones varchar(500)  
      AFTER dni; 

## Eliminar una columna

    ALTER TABLE nombreTabla  
      DROP nombreColumna;

    ALTER TABLE personas   
      DROP anotaciones;