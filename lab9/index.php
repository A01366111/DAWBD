<?php
    include_once("partials/_header.html");
    echo "<h1>Hola</h1>";

    echo "< table> ";
    for($i=1; $i <= 10; $i++){
        echo"<tr>"
        for($i=1; $i <= 10; $i++){
            echo "<td>" $i x $i = ".$i*$j." "</td>";
        }
        echo "</tr>"
    }
    echo "</table>"
    include_once("partials/_footer.hmtl");
?>