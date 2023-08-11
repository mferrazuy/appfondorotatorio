<?php
require '../db.php';
// Conexión a la base de datos

$numero = $_GET["num_rut"];

// Consulta a la base de datos para obtener el registro correspondiente al número
$query = "SELECT * FROM fr_empresas2 WHERE empre_rut = '$numero'";
 //echo $query;
$resultado = mysqli_query($con, $query);

if ($empresa = mysqli_fetch_assoc($resultado)) {
    // Devolver los datos del registro
    echo $empresa["empre_razonsocial"] ;
} else {
    echo "Registro no encontrado.";
}

// Cerrar la conexión a la base de datos
mysqli_close($con);
?>
