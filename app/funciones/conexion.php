<?php

    function conectar(){
        $link = mysqli_connect(
            'localhost',
            'root',
            'root',
            'introdb71213'
        );
        return $link;
    }

