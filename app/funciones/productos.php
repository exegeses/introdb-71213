<?php

    function listarProductos()
    {
        $link = conectar();
        $sql = "SELECT * 
                    FROM productos
                    JOIN marcas
                      ON productos.idMarca = marcas.idMarca
                    JOIN categorias
                      ON productos.idCategoria = categorias.idCategoria";
        return mysqli_query($link, $sql);
    }