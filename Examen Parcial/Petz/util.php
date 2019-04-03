<?php
function conectDb(){
	$servername = "localhost";
	$username = "a01366111";
	$password = "";
	$dbname = "c9";

	$con = mysqli_connect($servername, $username, $password, $dbname);

	if (!$con){
		die("Connection failed: ");
	}

	return $con;
}

function closeDb($mysql){
	mysqli_close($mysql);
}

    function getZombie(){
        $conn = conectDb();
        $sql = "SELECT * FROM Zombie";
        $result = mysqli_query($conn, $sql);
        closeDb($conn);
        return $result;
    }

    function insertZombie($Nombre, $Apellido, $Estado){
        $conn = conectDb();
        $sql = "INSERT INTO Zombie (Nombre, Apellido, Estado) VALUES (\"" .$Nombre . "\",\"" .$Apellido . "\",\"" .$Estado . "\");";
        
        if(mysqli_query($conn, $sql)){
            echo "New record created successfully";
            closeDb($conn);
            return true;
        } else {
            echo "Error: " .$sql . "<br>" .mysqli_error($conn);
            closeDb($conn);
            return  false;
        }
        closeDb($conn);
    }
?>