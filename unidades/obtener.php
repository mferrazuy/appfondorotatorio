<?php
require '../db.php';
// Conexión a la base de datos

$nombre = $_GET["unidad"];

// Consulta a la base de datos para obtener el registro correspondiente al número
$query = "SELECT * FROM fr_unidades2 WHERE unid_nicename LIKE '%$nombre%';";
//echo $query;
$resultado = mysqli_query($con, $query);
$registros = array();

while ($fila = mysqli_fetch_assoc($resultado)) {
    // Devolver los datos del registro
    $registros[] = $fila;
} 

// Cerrar la conexión a la base de datos
mysqli_close($con);
header("Content-Type: application/json");
echo json_encode($registros);
?>
