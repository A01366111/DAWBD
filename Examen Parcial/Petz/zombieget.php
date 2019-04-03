<?php
    require_once "util.php";
    $result = getZombie();
    
    if(mysqli_num_rows($result)>0){
        while($row = mysqli_fetch_assoc($result)){
            echo "<tr>";
            echo "<td>" .$row["Nombre"] . "</td>";
            echo "<td>" .$row["Apellido"] . "</td>";
            echo "<td>" .$row["Estado"] . "</td>";
            echo "</tr>";
        }
    }


?>

