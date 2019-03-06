<¿php
    function connect(){
        $conexion = mysqli_connect("localhost","ejuarezp"," ","symphony");
        if($conexion == NULL){
            die("500: Internal Server Error");
        }
        return $conexion;
    }

    function close($conexion){
        mysqli_close($conexion);
    }

    function get_usuarios(){
        $bd = connect();

        


        close
    }

    close (connect());
?>