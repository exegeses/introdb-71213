<?php

    function listarMarcas()
    {
        $link = conectar();
        $sql = "SELECT * FROM marcas order by idMarca";
        return mysqli_query($link, $sql);
    }