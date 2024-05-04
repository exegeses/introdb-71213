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


-- utilizando la técnica table relation
