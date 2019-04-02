<?php include("partials/header.html"); ?>
        <h1>Potencias</h1>
        <?php
            $n = $_GET["potencia"];
            echo '<section class="main wrapper"><table><thead><tr><td>Número</td><td>Cuadrado</td><td>Cubo</td></tr></thead><tbody>';
            for($i=1;$i<=$_GET["potencia"];$i++){
                echo "<tr><td>".$i."</td><td>".($i*$i)."</td><td>".($i*$i*$i)."</td></tr>";
            }
            echo "</tbody></table></section>";
        ?>
        <a href="index.php">Volver al Laboratorio 9</a>
<?php include("partials/footer.html"); ?> 