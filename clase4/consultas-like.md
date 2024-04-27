# Consultas de coincidencia ( qué contenga una cadena de caractéres )

> Las consultas de coincidencia se utilizan para obtener información que vamos a filtrar utilizando una cadena de caracteres
> Eso quiere decir que como filtro vamos a explicitar que contenga una cierta cadena de caractéres

> Traer nombre, precio y descripcion
> de la tabla productos
> que en la columna descripcion contenga la palabra 'Bluetooth'
 
    SELECT prdNombre, prdPrecio, prdDescripcion   
      FROM productos  
      WHERE prdDescripcion LIKE '%bluetooth%'; 

> Utilizamos la palabra reservada **LIKE** en combinación 
> con el carácter de **%** (porcentaje) como una especie de comodín que podía ocupar 1 (uno), varios o hasta ningún carácter.

> Comodín de un solo carácter (_)

    SELECT prdNombre, prdPrecio, prdDescripcion    
      FROM productos  
      WHERE prdNombre LIKE '_40%';

> Utilizamos el **_** (underscore o  guión bajo)
> como un comodín de 1 (un) solo carácter.
