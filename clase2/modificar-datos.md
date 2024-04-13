# Modificación de datos (registros) en una tabla

> Para modificar los datos de una tabla 
> utilizamos el comando **UPDATE**

> Sintáxis: 

    UPDATE nombreTabla  
      SET nombreColumna = valor,  
          nombreColumna2 = valor2
      WHERE colID = valorID;

> Ejemplo práctico:

    UPDATE personas  
      SET nombre = 'Vanessa', 
          dni = 35741952
      WHERE id = 3;