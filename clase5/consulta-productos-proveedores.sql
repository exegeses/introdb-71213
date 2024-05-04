# consulta a través de una tabla intermedia (pivote)

-- traer nombre de producto ( productos )
-- traer nombre de proveedor ( proveedores )

SELECT
        prdNombre AS Producto,
        prvNombre AS Proveedor
    FROM productos
    JOIN productos_proveedores
      ON productos.idProducto = productos_proveedores.idProducto
    JOIN proveedores
      ON proveedores.idProveedor = productos_proveedores.idProveedor
    ORDER BY productos.idProducto;

/* Agregamos el nombre de la marca (de la tabla marcas)
   y el nombre de la categoría (de la tabla categorías) */
SELECT
        prdNombre AS Producto,
        mkNombre AS Marca,
        catNombre AS Categoría,
        prvNombre AS Proveedor
    FROM productos
      JOIN marcas
       ON productos.idMarca = marcas.idMarca
      JOIN categorias
       ON productos.idCategoria = categorias.idCategoria
      JOIN productos_proveedores
       ON productos.idProducto = productos_proveedores.idProducto
      JOIN proveedores
       ON proveedores.idProveedor = productos_proveedores.idProveedor
    ORDER BY productos.idProducto;


-- utilizando la técnica table relation
SELECT
    prdNombre AS Producto,
    prvNombre AS Proveedor
  FROM productos, proveedores, productos_proveedores
  WHERE productos.idProducto = productos_proveedores.idProducto
    AND proveedores.idProveedor = productos_proveedores.idProveedor
ORDER BY productos.idProducto;

