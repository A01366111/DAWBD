<?php
function conectDb(){
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "c9";
    
    $con = mysqli_connect($servername, $username, $password, $dbname);
    
    //Check connection
    if(!$con){
        die("Connection failed: ". mysqli_connect_error());
    }
    
    return $con;
}
    function closeDb($mysql){
        mysqli_close($mysql);
}

?>