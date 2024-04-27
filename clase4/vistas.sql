# Vistas en SQL

/*
    Una vista es una consulta
    que podemos almacenar dentro de nmuestra base de datos
*/
##!! Parece una tabla independiente pero en realidad no lo es !!

CREATE VIEW lista_precios
    AS
        SELECT  idProducto AS id,
                prdNombre AS Producto,
                prdPrecio AS Contado,
                format( prdPrecio * 1.05, 2 ) AS Lista,
                mkNombre AS Marca,
                catNombre AS Categoría
        FROM productos AS p
             JOIN marcas AS m
              ON p.idMarca = m.idMarca
             JOIN categorias AS c
              ON p.idCategoria = c.idCategoria;


/* llamado a una vista */
SELECT * FROM lista_precios;

-- Obtener listado de todas las vistas dentro una base de datos
    SHOW FULL TABLES
        IN introdb71213
        WHERE Table_type = 'VIEW';

